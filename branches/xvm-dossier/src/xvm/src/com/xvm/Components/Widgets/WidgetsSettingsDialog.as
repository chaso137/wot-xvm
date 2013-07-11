/**
 * Widgets Settings Dialog
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
import gfx.controls.Button;
import gfx.controls.ButtonBar;
import gfx.controls.CheckBox;
import gfx.controls.NumericStepper;
import gfx.controls.RadioButton;
import gfx.controls.ScrollingList;
import gfx.controls.TextInput;
import gfx.core.UIComponent;
import net.wargaming.managers.WindowManager;
import net.wargaming.controls.Window;
import net.wargaming.managers.Localization;
import com.xvm.Comm;
import com.xvm.Defines;
import com.xvm.JSONx;
import com.xvm.Locale;
import com.xvm.Logger;
import com.xvm.Utils;
import com.xvm.Components.Widgets.WidgetsFactory;

class com.xvm.Components.Widgets.WidgetsSettingsDialog
{
    private static var windowName = "widgets_settings";
    private static var WIDGET_TYPES = { small: 0, medium: 1, switcher: 2, clock: 3 };
    public static var DEFAULT_WIDGET_SETTINGS = {
        id: (new Date()).getTime(),
        name: Locale.get("clock"),
        type: "clock",
        format: "HH:MM:SS",
        enable: true
    };
    
    var savedWidgetsSettings:Array;
    var widgetsSettings:Array;
    var dialogSettings:Object;

    var main_mc:MovieClip;
    var playerName:String;
    
    var wnd:Window;

    var btnAdd:Button;
    var btnRemove:Button;
    var list:ScrollingList;

    var mc_widget:MovieClip;
    var mc_widgetType:ButtonBar;
    var mc_small:MovieClip;
    var mc_medium:MovieClip;
    var mc_switcher:MovieClip;
    var mc_clock:MovieClip;

    var mc_actions:ButtonBar;
    
    /////////////////////////////////////////////////////////////////
    // PROPERTIES
    
    var _widgetsChanged:Boolean;
    private function get widgetsChanged()
    {
        return _widgetsChanged;
    }

    private function set widgetsChanged(value:Boolean)
    {
        _widgetsChanged = value;
        showCurrentWidget();
        mc_actions.renderers[1].disabled = !value; // apply
    }

    private function get currentWidget()
    {
        if (list.selectedIndex < 0 || list.selectedIndex > widgetsSettings.length - 1)
            return null;
        return widgetsSettings[list.selectedIndex];
    }
    
    /////////////////////////////////////////////////////////////////
    // INIT
    
    public function WidgetsSettingsDialog(main_mc:MovieClip, playerName:String) 
    {
        this.main_mc = main_mc;
        this.playerName = playerName;

        widgetsSettings = WidgetsFactory.widgetsSettings;
        savedWidgetsSettings = (Array)(JSONx.parse(JSONx.stringify(widgetsSettings)));
        
        //Logger.addObject(widgetsSettings);
        
        WidgetsFactory.update([]);
        _widgetsChanged = false;
        Comm.LoadSettings(playerName + ":" + Defines.SETTINGS_DOSSIER_WIDGETSSETTINGSDIALOG, this, onSettingsLoaded);
    }
    
    public function onSettingsLoaded(event:Object)
    {
        try
        {
            dialogSettings = (!event || !event.str || event.str == "") ? Defines.DEFAULT_SETTINGS_WIDGETSSETTINGSDIALOG : JSONx.parse(event.str);
        }
        catch (e)
        {
            Logger.add("Error loading settings: " + e.message + "\n" + JSONx.stringify(event));
            dialogSettings = Defines.DEFAULT_SETTINGS_WIDGETSSETTINGSDIALOG;
        }
        
        WindowManager.instance.close(windowName, true);
        var wopt = { _x: dialogSettings.x, _y: dialogSettings.y,  _title: Locale.get("Widgets Settings"),
            allowResize: false, _minWidth: 600, _minHeight: 430, _offsetLeft: 10, _offsetTop: 40, _offsetRight: 10, _offsetBottom: 30,
            _formSource: "none", _formType: "symbol", _visible: true, topmostLevel: true};
        wnd = WindowManager.instance.open("Window", "widgets_settings", wopt);
        wnd.addEventListener("confirmFormComplete", this, "onConfirmFormComplete");
        wnd.addEventListener("close", this, "onClose");
    }
    
    private function onConfirmFormComplete()
    {
        list = UIComponent.createInstance(wnd, "ScrollingList", "list", wnd.getNextHighestDepth(),
            { _x: 10, _y: 58, _width: 200, _height: wnd.height - 100, labelField: "name", itemRenderer: "DropdownMenu_ListItemRenderer" } );
        list.addEventListener("change", this, "onListChange");
        list.dataProvider = widgetsSettings;
        list.invalidateData();
        list.selectedIndex = 0;
        
        btnAdd = (Button)(wnd.attachMovie("Button", "btnAdd", wnd.getNextHighestDepth(),
            { _x: 15, _y: 35, _width: 90, _height: 22, label:Locale.get("Add") } ));
        btnAdd.addEventListener("click", this, "onAdd");
        
        btnRemove = (Button)(wnd.attachMovie("Button", "btnRemove", wnd.getNextHighestDepth(),
            { _x: 115, _y: 35, _width: 90, _height: 22, label:Locale.get("Remove") } ));
        btnRemove.addEventListener("click", this, "onRemove");

        wnd.attachMovie("Window_BGForm", "bg", wnd.getNextHighestDepth(),
            { _x: 210, _y: 58, _width: wnd.width - 220, _height: wnd.height - 100 });

        mc_widget = wnd.createEmptyMovieClip("mc_widget", wnd.getNextHighestDepth());

        mc_small = mc_widget.createEmptyMovieClip("mc_small", mc_widget.getNextHighestDepth());
        mc_small._x = 210; mc_small._y = 58;
        CreateSmallWidgetSettings(mc_small);
        
        mc_medium = mc_widget.createEmptyMovieClip("mc_medium", mc_widget.getNextHighestDepth());
        mc_medium._x = 210; mc_medium._y = 58;
        CreateMediumWidgetSettings(mc_medium);
        
        mc_switcher = mc_widget.createEmptyMovieClip("mc_switcher", mc_widget.getNextHighestDepth());
        mc_switcher._x = 210; mc_switcher._y = 58;
        CreateSwitcherSettings(mc_switcher);

        mc_clock = mc_widget.createEmptyMovieClip("mc_clock", mc_widget.getNextHighestDepth());
        mc_clock._x = 210; mc_clock._y = 58;
        CreateClockSettings(mc_clock);

        var dp = [
            { value: "small",    label: Locale.get("Small") },
            { value: "medium",   label: Locale.get("Medium") },
            { value: "switcher", label: Locale.get("Switcher") },
            { value: "clock",    label: Locale.get("Clock") } ];
        mc_widgetType = (ButtonBar)(mc_widget.attachMovie("ButtonBar", "widget_type", mc_widget.getNextHighestDepth(),
            { _x: 215, _y: 34, autoSize: true, dataProvider: dp, selectedIndex: -1, itemRenderer: "WindowTabButton" } ));
        mc_widgetType.addEventListener("change", this, "onWidgetTypeSelect");

        var dp_actions = [
            { value: "cancel",   label: Locale.get("Cancel") },
            { value: "apply",    label: Locale.get("Apply"), disabled: true },
            { value: "ok",       label: Locale.get("OK") } ];
        mc_actions = (ButtonBar)(wnd.attachMovie("ButtonBar", "actions", wnd.getNextHighestDepth(),
            { _x: 330, _y: 390, buttonWidth: 80, dataProvider: dp_actions, selectedIndex: -1, spacing: 5, tabEnabled: false, focusEnabled: false,
              itemRenderer: "Button" } ));
        mc_actions.addEventListener("change", this, "onActionButtonClick");

        drawWidgetSettings();
        showCurrentWidget();
    }

    private function CreateSmallWidgetSettings(mc:MovieClip)
    {
        var enable:CheckBox = (CheckBox)(mc.attachMovie("CheckBox", "enable", mc.getNextHighestDepth(),
            { _x: 10, _y: 10, autoSize: true, label: Locale.get("Enable") } ));
        enable.addEventListener("select", this, "onEnableChange");

        CreateLabel(mc, "lInterval", 10, 30, 130, 25, Locale.get("Update interval, sec"));
        var interval:NumericStepper = (NumericStepper)(mc.attachMovie("NumericStepper", "interval_small", mc.getNextHighestDepth(),
            { _x: 140, _y: 30, _width: 60, minimum: 0, maximum: 3600, stepSize: 10 } ));
        interval.addEventListener("change", this, "onIntervalChange");
    }

    private function CreateMediumWidgetSettings(mc)
    {
        var enable:CheckBox = (CheckBox)(mc.attachMovie("CheckBox", "enable", mc.getNextHighestDepth(),
            { _x: 10, _y: 10, autoSize: true, label: Locale.get("Enable") } ));
        enable.addEventListener("select", this, "onEnableChange");

        CreateLabel(mc, "lInterval", 10, 30, 130, 25, Locale.get("Update interval, sec"));
        var interval:NumericStepper = (NumericStepper)(mc.attachMovie("NumericStepper", "interval_medium", mc.getNextHighestDepth(),
            { _x: 140, _y: 30, _width: 60, minimum: 0, maximum: 3600, stepSize: 10 } ));
        interval.addEventListener("change", this, "onIntervalChange");
    }
    
    private function CreateSwitcherSettings(mc)
    {
        var enable:CheckBox = (CheckBox)(mc.attachMovie("CheckBox", "enable", mc.getNextHighestDepth(),
            { _x: 10, _y: 10, autoSize: true, label: Locale.get("Enable") } ));
        enable.addEventListener("select", this, "onEnableChange");

        CreateLabel(mc, "lLabel", 10, 30, 40, 25, Locale.get("Label"));
        var tiLbl:TextInput = (TextInput)(mc.attachMovie("TextInput", "label", mc.getNextHighestDepth(),
            { _x: 50, _y: 30, _width: 300 } ));
        tiLbl.addEventListener("textChange", this, "onSwitcherLabelChange");

        CreateLabel(mc, "lLabel", 10, 60, 100, 25, Locale.get("Modes"));
        var cb1:CheckBox = (CheckBox)(mc.attachMovie("CheckBox", "cb1", mc.getNextHighestDepth(),
            { _x: 10, _y: 80, width:200, label: Locale.get("Hide all widgets") } ));
        cb1.addEventListener("select", this, "onSwitcherCbChange");
        var cb2:CheckBox = (CheckBox)(mc.attachMovie("CheckBox", "cb2", mc.getNextHighestDepth(),
            { _x: 10, _y: 100, width:200, label: Locale.get("Select Mode 1") } ));
        cb2.addEventListener("select", this, "onSwitcherCbChange");
        var cb3:CheckBox = (CheckBox)(mc.attachMovie("CheckBox", "cb3", mc.getNextHighestDepth(),
            { _x: 10, _y: 120, width:200, label: Locale.get("Select Mode 2") } ));
        cb3.addEventListener("select", this, "onSwitcherCbChange");
        var cb4:CheckBox = (CheckBox)(mc.attachMovie("CheckBox", "cb4", mc.getNextHighestDepth(),
            { _x: 10, _y: 140, width:200, label: Locale.get("Show detailed info window") } ));
        cb4.addEventListener("select", this, "onSwitcherCbChange");
    }

    private function CreateClockSettings(mc)
    {
        var enable:CheckBox = (CheckBox)(mc.attachMovie("CheckBox", "enable", mc.getNextHighestDepth(),
            { _x: 10, _y: 10, autoSize: true, label: Locale.get("Enable") } ));
        enable.addEventListener("select", this, "onEnableChange");

        CreateLabel(mc, "lFormat", 10, 30, 40, 25, Locale.get("Format"));
        var tiFormat:TextInput = (TextInput)(mc.attachMovie("TextInput", "format", mc.getNextHighestDepth(),
            { _x: 50, _y: 30, _width: 300 } ));
        tiFormat.addEventListener("textChange", this, "onClockFormatChange");
    }

    private function CreateLabel(mc, name, x, y, w, h, text)
    {
        var tfLbl:TextField = mc.createTextField("tf_lbl", mc.getNextHighestDepth(), x, y, w, h);
        tfLbl.selectable = false;
        tfLbl.verticalAlign = "center";
        tfLbl.textColor = Defines.UICOLOR_DEFAULT;
        var fmt:TextFormat =  tfLbl.getNewTextFormat();
        fmt.font = "$FieldFont";
        fmt.size = 13;
        tfLbl.setNewTextFormat(fmt);
        tfLbl.text = text;
        
    }
    
    /////////////////////////////////////////////////////////////////
    // EVENTS
    
    private function onClose()
    {
        if (dialogSettings.x != wnd._x || dialogSettings.y != wnd._y)
            Comm.SaveSettings(playerName + ":" + Defines.SETTINGS_DOSSIER_WIDGETSSETTINGSDIALOG, { x: wnd._x, y: wnd._y } );

        wnd.removeMovieClip();
        wnd = null;
        WindowManager.instance.deleteWindow(windowName)

        WidgetsFactory.update(savedWidgetsSettings);
    }

    private function onActionButtonClick(event)
    {
        Logger.addObject(arguments, "onActionButtonClick", 2);
        
        var save:Boolean = false;
        var close:Boolean = false;
        
        switch (event.item.value)
        {
            case "cancel":
                close = true;
                break;
            
            case "apply":
                save = true;
                break;
            
            case "ok":
                save = true;
                close = true;
                break;
        }

        if (save && widgetsChanged)
        {
            savedWidgetsSettings = (Array)(JSONx.parse(JSONx.stringify(widgetsSettings)));
            widgetsChanged = false;
            Comm.SaveSettings(playerName + ":" + Defines.SETTINGS_DOSSIER_WIDGETS, widgetsSettings);
        }

        if (close)
            onClose();
    }
    
    private function onListChange(event)
    {
        if (event.index > widgetsSettings.length - 1)
            list.selectedIndex = widgetsSettings.length - 1;
        drawWidgetSettings();
    }
    
    private function onAdd()
    {
        var w = DEFAULT_WIDGET_SETTINGS;
        w.id = (new Date()).getTime();
        widgetsSettings.push(JSONx.parse(JSONx.stringify(w)));
        widgetsChanged = true;
        list.invalidateData();
        list.selectedIndex = widgetsSettings.length - 1;
    }
    
    private function onRemove()
    {
        if (list.selectedIndex < 0 || list.selectedIndex > widgetsSettings.length - 1)
            return;
        widgetsSettings.splice(list.selectedIndex, 1);
        widgetsChanged = true;
        list.invalidateData();
        drawWidgetSettings();
    }

    private function onWidgetTypeSelect(event)
    {
        //Logger.addObject(arguments, "onWidgetTypeSelect", 2);
        var w = currentWidget;
        if (w == null)
            return;
        if (w.type != event.item.value)
        {
            widgetsSettings[list.selectedIndex] = {
                id:  w.id,
                type: event.item.value,
                name: Locale.get(event.item.value),
                enable: w.enable
            }
            if (event.item.value == "clock")
                widgetsSettings[list.selectedIndex].format = "HH:MM:SS";
            widgetsChanged = true;
            list.invalidateData();
            drawWidgetSettings();
        }
    }
    
    /////////////////////////////////////////////////////////////////
    // Settings controls events

    private function onEnableChange(event)
    {
        //Logger.addObject(arguments, "onSmallWidgetEnableChange", 2);
        var w = currentWidget;
        if (w == null)
            return;
        w.enable = event.target.selected;
        widgetsChanged = true;
    }
    
    private function onIntervalChange(event)
    {
        //Logger.addObject(arguments, "onSmallWidgetIntervalChange", 2);
        var w = currentWidget;
        if (w == null)
            return;
        if (w.interval != event.target.value && (
            w.type == "small" && event.target._name == "interval_small" ||
            w.type == "medium" && event.target._name == "interval_medium"))
        {
            w.interval = event.target.value;
            widgetsChanged = true;
        }
    }
    
    private function onSwitcherLabelChange(event)
    {
        //Logger.addObject(arguments, "onSwitcherLabelChange", 2);
        var w = currentWidget;
        if (w == null)
            return;
        w.label = event.target.text;
        w.name = Locale.get(w.type) + (w.label == "" ? "" : " : " + w.label);
        list.invalidateData();
        widgetsChanged = true;
    }

    private function onSwitcherCbChange(event)
    {
        //Logger.addObject(arguments, "onSwitcherCbChange", 2);
        var w = currentWidget;
        if (w == null)
            return;
        var n = 0;
        switch (event.target._name)
        {
            case "cb1": n = 0x01; break;
            case "cb2": n = 0x02; break;
            case "cb3": n = 0x04; break;
            case "cb4": n = 0x08; break;
        }
        w.modes = (event.target.selected) ? w.modes | n : w.modes & ~n;
    }
    
    private function onClockFormatChange(event)
    {
        //Logger.addObject(arguments, "onClockFormatChange", 2);
        var w = currentWidget;
        if (w == null)
            return;
        w.format = event.target.text;
        widgetsChanged = true;
    }

    /////////////////////////////////////////////////////////////////
    // DRAW
    
    private function drawWidgetSettings()
    {
        //Logger.addObject(arguments, "drawWidgetSettings", 2);
        var w = currentWidget;
        if (w == null)
        {
            btnRemove.disabled = true;
            mc_widget._visible = false;
            return;
        }

        btnRemove.disabled = false;
        mc_widget._visible = true;

        mc_widgetType.selectedIndex = WIDGET_TYPES[w.type];
        mc_small._visible = w.type == "small";
        mc_medium._visible = w.type == "medium";
        mc_switcher._visible = w.type == "switcher";
        mc_clock._visible = w.type == "clock";
        
        switch (w.type)
        {
            case "small": drawSmallWidgetSettings(w); break;
            case "medium": drawMediumWidgetSettings(w); break;
            case "switcher": drawSwitcherSettings(w); break;
            case "clock": drawClockSettings(w); break;
        }
    }

    private function drawSmallWidgetSettings(w:Object)
    {
        mc_small.enable.selected = w.enable;
        if (isNaN(w.interval))
            w.interval = 300;
        mc_small.interval_small.value = w.interval;
    }

    private function drawMediumWidgetSettings(w:Object)
    {
        mc_medium.enable.selected = w.enable;
        if (isNaN(w.interval))
            w.interval = 300;
        mc_medium.interval_medium.value = w.interval;
    }

    private function drawSwitcherSettings(w:Object)
    {
        mc_switcher.enable.selected = w.enable;
        if (!w.label)
            w.label = "";
        mc_switcher.label.text = w.label;
        if (isNaN(parseInt(w.modes)))
            w.modes = 0x0F;
        mc_switcher.cb1.selected = (w.modes & 0x01);
        mc_switcher.cb2.selected = (w.modes & 0x02);
        mc_switcher.cb3.selected = (w.modes & 0x04);
        mc_switcher.cb4.selected = (w.modes & 0x08);
    }

    private function drawClockSettings(w:Object)
    {
        mc_clock.enable.selected = w.enable;
        if (!w.format)
            w.format = "HH:MM:SS";
        mc_clock.format.text = w.format;
    }
    
    /////////////////////////////////////////////////////////////////
    // PREVIEW

    private function showCurrentWidget()
    {
        var w = currentWidget;
        if (w == null)
            WidgetsFactory.update([]);
        else
            WidgetsFactory.update([ w ]);
    }
}