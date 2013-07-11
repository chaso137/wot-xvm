/**
 * Widgets Factory Class
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
import com.xvm.Comm;
import com.xvm.Config;
import com.xvm.Defines;
import com.xvm.JSONx;
import com.xvm.Logger;
import com.xvm.Utils;
import com.xvm.VehicleInfo;
import com.xvm.Components.Dossier.IWidget;

class com.xvm.Components.Widgets.WidgetsFactory
{
    /////////////////////////////////////////////////////////////////
    // PUBLIC STATIC METHODS

    public static function initialize(holder:MovieClip, playerName:String, widgetsSettings:Array)
    {
        Logger.addObject(widgetsSettings, "", 2);

        if (_instance == null)
            _instance = new WidgetsFactory(holder, playerName, widgetsSettings);
    }

    public static function update(widgetsSettings:Array)
    {
        with (_instance)
        {
            m_widgetsSettings = widgetsSettings;
            updateWidgets();
        }
    }

    public static function get widgetsSettings()
    {
        return _instance.m_widgetsSettings;
    }

    /////////////////////////////////////////////////////////////////
    // PROPERTIES
    
    private static var _instance:WidgetsFactory = null;
    
    private var m_holder:MovieClip;
    private var m_playerName:String;
    private var m_widgetsSettings:Array;
    private var m_widgets:Array;
    
    private var m_timer:Function;
    private var m_commandCounter:Number;

    /////////////////////////////////////////////////////////////////
    // PRIVATE
    
    private function WidgetsFactory(holder:MovieClip, playerName:String, widgetsSettings:Array)
    {
        m_holder = holder;
        m_playerName = playerName;
        m_widgetsSettings = widgetsSettings;
        m_widgets = [];

        m_commandCounter = 0;

        var me = this;
        m_timer = _global.setInterval(function() { me.idleFunc.call(me) }, 10);
        
        updateWidgets();
    }

    private var _lastUpdateDataCall; 
    // called by timer every 10 ms
    private function idleFunc()
    {
return;
        var now = (new Date()).getTime();
        if (!_lastUpdateDataCall)
        {
            _lastUpdateDataCall = now - 59000;
            updateData();
        }
        if (now - _lastUpdateDataCall > 60000)
        {
            _lastUpdateDataCall = now;
            updateData();
        }
    }
    
    private function updateData()
    {
        Comm.SyncEncoded(Defines.COMMAND_DOSSIER,
            String(m_commandCounter++) + ";" +
            m_playerName + ";" +        // player name
            1372938628 + ";" +        // end
            (15 * 60) + ";" +         // interval(sec)
            100 + ";" +               // count
            "2;" +                    // 1 - per vehicle, 2 - summary
            "battlesCount,wins;" +    // data fields
            ";" +                     // company fields
            "",                       // clan fields
            this, answerCallback);
    }
    
    private function answerCallback(event):Void
    {
        var answer:String = event.str;
        if (answer == null || answer == "")
            return;
        if (Utils.startsWith("[ERROR]", answer))
        {
            Logger.add("Dossier answer error: " + answer);
            return;
        }

        var data = parseAnswer(answer);
        Logger.addObject(data);
    }
    
    private function parseAnswer(answer:String):Object
    {
        var lines:Array = answer.split("\n");
        var len:Number = lines.length;
        for (var i:Number = 0; i < len; ++i)
        {
            var values:Array = lines[i].split(";");
            var period = int(values[0]);
            var vi = VehicleInfo.getInfo2ByVid(int(values[1]));
            Logger.add(lines[i]);
        }
        return "";
    }

    private function updateWidgets()
    {
        Logger.addObject(m_widgetsSettings, "", 2);
        
        for (var i = 0; i < m_widgets.length; ++i)
        {
        }
    }
}