import com.xvm.GlobalEventDispatcher;
import wot.Minimap.MinimapEvent;
import wot.Minimap.dataTypes.Icon;
import wot.Minimap.model.externalProxy.IconsProxy;

class wot.Minimap.model.iconTracker.PositionTracking
{
    /**
     * Store curretly drawn enemy units position.
     * Later can be used to show last position enemy unit has been seen.
     */
    
    private var posTrack:Array; /** Of Icon */
    
    public function PositionTracking() 
    {
        posTrack = [];
    }
    
    public function update():Void
    {
        var entries:Array = IconsProxy.getAllSyncedEntries();
        /** entry is MinimapEntry */
        for (var i in entries)
        {
            var entry:net.wargaming.ingame.MinimapEntry = entries[i];
            
            if (entry.entryName != "enemy")
            {
                continue;
            }
            
            if (trackThisOne(entry))
            {
                rememberLost(entry);
                
                informPlayersPanel(entry["_xvm_worker"].uid);
            }
        }
    }
    
    // -- Private
    
    private function rememberLost(entry):Void
    {
        posTrack.push(new Icon(entry.uid, entry._x, entry._y, entry.vehicleClass));
    }
    
    private function informPlayersPanel(uid:Number):Void
    {
        GlobalEventDispatcher.dispatchEvent(new MinimapEvent(MinimapEvent.ENEMY_REVEALED, uid));
    }
    
    private function trackThisOne(entry):Boolean
    {
        var firstTimeSeen:Boolean = true;
        
        for (var j in posTrack)
        {
            var track:Icon = posTrack[j];
            
            if (entry.uid == track.uid)
            {
                firstTimeSeen = false;
                
                track.pos.x = entry._x;
                track.pos.y = entry._y;

                break;
            }
        }
        
        return firstTimeSeen;
    }
    
    public function getArray():Array
    {
        return posTrack;
    }
}
