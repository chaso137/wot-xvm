/**
 * PlayersPanelProxy class
 * provides simple wrapper to PlayersPanel.m_list._dataProvider Array
 * which contains information about players.
 * 
 * Each array element contains following player data:
 * 
  "uid": 2079007,
  "vehicle": "M18",
  "position": 6,
  "denunciations": 4,
  "team": "team1",
  "squad": 0,
  "level": 6,
  "himself": true,
  "vehId": 24036245,
  "userName": "Fei_Wong",
  "teamKiller": false,
  "VIP": false,
  "icon": "../maps/icons/vehicle/contour/usa-M18_Hellcat.png",
  "vipKilled": 0,
  "muted": false,
  "vehicleState": 3,
  "speaking": false,
  "roster": 0,
  "isPostmortemView": true,
  "clanAbbrev": "ALONE",
  "frags": 0,
  "label": "Fei_Wong",
  "vehAction": 0
 *   
 * @author ilitvinov87@gmail.com
 */

class wot.Minimap.model.PlayersPanelProxy
{
    public static function getPlayerInfo(uid):Object
    {
        var playerInfo:Object = getPlayerInfoFrom(getAllyPlayers(), uid);
        if (playerInfo)
            return playerInfo;
        
        return getPlayerInfoFrom(getEnemyPlayers(), uid);
    }
   
    public static function getAllUids():Array
    {
        var allAllyUids:Array = allUidsOfTeam(getAllyPlayers());
        var allEnemyUids:Array = allUidsOfTeam(getEnemyPlayers());
            
        return allAllyUids.concat(allEnemyUids);
    }
    
    // -- Private
        
    private static function getPlayerInfoFrom(players:Array, uid:Number):Object
    {
        for (var i:Number = 0; i < players.length; i++)
            if (players[i].uid == uid)
                return players[i];
        
        return null;
    }
    
    private static function allUidsOfTeam(players:Array):Array
    {
        var all:Array = [];
        
        for (var i:Number = 0; i < players.length; i++)
            all.push(players[i].uid);
        
        return all;
    }
    
    private static function getAllyPlayers():Array
    {
        //Logger.addObject(_root.leftPanel.m_list._dataProvider, "mm.ppp._root.leftPanel.m_list._dataProvider = ", 3);
        return _root.leftPanel.m_list._dataProvider;
    }
    
    private static function getEnemyPlayers():Array
    {
        return _root.rightPanel.m_list._dataProvider;
    }
}