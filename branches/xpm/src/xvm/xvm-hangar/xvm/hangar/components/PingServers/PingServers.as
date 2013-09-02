package xvm.hangar.components.PingServers
{
    import com.xvm.events.ObjectEvent;
    import flash.events.*;
    import flash.utils.*;
    import com.xvm.cfg.CPingServers;
    import com.xvm.Config;
    import com.xvm.Defines;
    import com.xvm.io.Cmd;
    import com.xvm.io.JSONx;
    import org.idmedia.as3commons.util.StringUtils;

    public class PingServers extends EventDispatcher
    {
        private static var _instance:PingServers = null;
        private static function get instance():PingServers
        {
            if (_instance == null)
                _instance = new PingServers();
            return _instance;
        }

        private var pingTimer:uint;
        private var pingTimeouts:Array;

        public static function initFeature(cfg:CPingServers):void
        {
            if (instance.pingTimer > 0)
            {
                clearInterval(instance.pingTimer);
                instance.pingTimer = 0;
            }

            if (instance.pingTimeouts != null)
            {
                for each (var t:uint in instance.pingTimeouts)
                    clearTimeout(t);
                instance.pingTimeouts = null;
            }

            if (cfg.enabled == false)
                return;

            instance.pingTimer = setInterval(instance.ping, cfg.updateInterval);

            // immediately
            instance.ping();
            // after 1, 3, 5 sec
            instance.pingTimeouts = [
                setTimeout(instance.ping, 1000),
                setTimeout(instance.ping, 3000),
                setTimeout(instance.ping, 5000)
            ];
        }

        public static function addListener(listener:Function):void
        {
            instance.addEventListener(Event.COMPLETE, listener);
        }

        // PRIVATE

        function PingServers()
        {
            pingTimer = 0;
            pingTimeouts = null;
        }

        private function ping():void
        {
            Cmd.ping(this, pingCallback);
        }

        private function pingCallback(answer:String):void
        {
            if (answer == null || answer == "")
                return;

            var parsedAnswerObj:Object = JSONx.parse(answer);
            var responceTimeList:Array = [];
            for (var name:String in parsedAnswerObj)
            {
                var cluster:String = StringUtils.startsWith(name, "WOT ") ? name.substring(4) : name;
                responceTimeList.push({ cluster: cluster, time: parsedAnswerObj[name] });
            }
            responceTimeList.sortOn(["cluster"]);

            dispatchEvent(new ObjectEvent(Event.COMPLETE, responceTimeList));
        }
    }
}