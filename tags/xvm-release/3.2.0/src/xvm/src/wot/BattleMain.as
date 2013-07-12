﻿/**
 * ...
 * @author sirmax2
 */
import com.greensock.OverwriteManager;
import com.greensock.plugins.TweenPlugin;
import com.greensock.plugins.TintPlugin;
import wot.utils.Config;
import wot.utils.GlobalEventDispatcher;
import wot.utils.Logger;
import wot.utils.StatLoader;
import wot.utils.Utils;
import wot.SixthSenseIndicator;

class wot.BattleMain
{
    static var instance: BattleMain;
    var sixthSenseIndicator:SixthSenseIndicator;

    private static var dummy = Logger.dummy;

    private static var soundManager = new net.wargaming.managers.SoundManager();
    private static var width, height;

    static function main()
    {
        Utils.TraceXvmModule("Battle:main");

        GlobalEventDispatcher.addEventListener("config_loaded", BattleMainConfigLoaded);
        GlobalEventDispatcher.addEventListener("config_loaded", StatLoader.LoadLastStat);
        Config.LoadConfig("BattleMain.as");

        // initialize TweenLite
        OverwriteManager.init(OverwriteManager.AUTO);
        TweenPlugin.activate([TintPlugin]);

        instance = new BattleMain();
        gfx.io.GameDelegate.addCallBack("battle.showPostmortemTips", instance, "showPostmortemTips");
        gfx.io.GameDelegate.addCallBack("Stage.Update", instance, "onUpdateStage");
    }

    private static function BattleMainConfigLoaded()
    {
        //Logger.add("BattleMainConfigLoaded()");

        GlobalEventDispatcher.removeEventListener("config_loaded", BattleMainConfigLoaded);

        // Initialize Sixth Sense Indicator
        instance.sixthSenseIndicator = new SixthSenseIndicator();

        // TODO: remove (replace by setup elements)
        // Panels Mode Switcher
        if (Config.s_config.battle.removePanelsModeSwitcher)
            _root.switcher_mc._visible = false;

        // Show Clocks
        ShowClock(Config.s_config.battle.clockFormat);

        // Setup Visual Elements
        SetupElements();
    }

    private static function SetupElements()
    {
        if (!Config.s_loaded || !width || !height)
            return;
        var cfg = Config.s_config.battle.elements;
        for (var i in cfg)
        {
            if (_root[i] != null)
                SetupElement(_root[i], Config.s_config.battle.elements[i], i);
            else
                Logger.add("Warning: Visual Element not found: " + i);
        }
    }

    private static var colors:Array = [ 0xFFFFFF, 0xFF0000, 0xFFFF00, 0x00FF00, 0x00FFFF, 0xFF00FF ];
    private static function SetupElement(mc:MovieClip, cfg, name)
    {
        //Logger.addObject(cfg, name + " " + width + "x" + height, 2);
        var v: Number;

        v = getValue(cfg.x);
        if (!isNaN(v))
            mc._x = v;
        v = getValue(cfg.y)
        if (!isNaN(v))
            mc._y = v;
        v = getValue(cfg.w);
        if (!isNaN(v))
            mc._width = v;
        v = getValue(cfg.h);
        if (!isNaN(v))
            mc._height = v;
        v = getValue(cfg.a);
        if (!isNaN(v))
        {
            mc._alpha = v / 100.0;
            if (v <= 0)
                mc._visible = false;
        }

        if (cfg.debug == true)
        {
            with (mc)
            {
                var x = mc._x;
                var y = mc._y;
                var w = mc._width;
                var h = mc._height;
                var c = colors[colors.length * Math.random()];
                beginFill(0, 0);
                lineStyle(1, c, 100);
                moveTo(0, 0);
                lineTo(w, 0);
                lineTo(w, h);
                lineTo(0, h);
                lineTo(0, 0);
                endFill();
                var t: TextField = createTextField("t", getNextHighestDepth(), w / 2 - 50,  h / 2 - 10, 100, 40);
                t.setNewTextFormat(new TextFormat("Small Fonts", 8, c, false, false, false, null, null, "center"));
                t.filters = [new flash.filters.DropShadowFilter(0, 0, 0, 100, 4, 4, 2, 3)];
                t.multiline = true;
                t.text = name + "\n" + mc._x + "x" + mc._y + "+" + mc._width + "," + mc._height;
                Logger.add("Element: " + name + ":" + mc._x + "x" + mc._y + "+" + mc._width + "," + mc._height;);
            }
        }
    }

    private static function getValue(v):Number
    {
        if (!isNaN(v))
            return v;
        return NaN;
    }

    private static function ShowClock(format)
    {
        if (!format || format == "")
            return;
        var debugPanel = _root.debugPanel;
        var lag = debugPanel.lag;
        var fps = debugPanel.fps;
        var clock: TextField = debugPanel.createTextField("clock", debugPanel.getNextHighestDepth(),
            lag._x + lag._width, fps._y, 300, fps._height);
        clock.antiAliasType = "advanced";
        clock.html = true;
        var tf: TextFormat = fps.getNewTextFormat();
        clock.styleSheet = Utils.createStyleSheet(Utils.createCSS("xvm_clock", 
            tf.color, tf.font, tf.size, "left", tf.bold, tf.italic));
        clock.filters = [new flash.filters.DropShadowFilter(1, 90, 0, 100, 5, 5, 1.5, 3)];

        setInterval(function() {
            clock.htmlText = "<span class='xvm_clock'>" + Utils.FormatDate(format, new Date()) + "</span>";
        }, 1000);
    }

    function showPostmortemTips(movingUpTime, showTime, movingDownTime)
    {
        //Logger.add("Battle::showPostmortemTips");
        if (Config.s_config.battle.showPostmortemTips)
            _root.showPostmortemTips(movingUpTime, showTime, movingDownTime);
    }

    function onUpdateStage(width, height)
    {
        //Logger.add("Battle::onUpdateStage()");
        _root.onUpdateStage(width, height);
        BattleMain.width = width;
        BattleMain.height = height;
        SetupElements();
    }
}