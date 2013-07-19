/**
 * Label control
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
import gfx.core.UIComponent;
import com.xvm.Logger;
import com.xvm.Utils;
import com.xvm.Controls.IControl;
import com.xvm.Controls.ControlBase;

class com.xvm.Controls.Label extends ControlBase
{
    /////////////////////////////////////////////////////////////////
    // CLASS REGISTRATION
    
    private static var CLASS_NAME = "__Packages.com.xvm.Controls.Label";
    private static var CLASS_LINKED = Object.registerClass(CLASS_NAME, Label);

    /////////////////////////////////////////////////////////////////
    // PUBLIC STATIC
    
    public static function Create(context:MovieClip, name:String, x:Number, y:Number, w:Number, h:Number, initObj:Object):Label
    {
        return Label(ControlBase.__Create(context, CLASS_NAME, name, x, y, w, h, initObj));
    }

    /////////////////////////////////////////////////////////////////
    // PUBLIC PROPERTIES

    private var _textField:TextField;
    public function get textField():TextField
    {
        return textField;
    }

    private var _fontSize:Number;
    public function get fontSize():Number
    {
        return _fontSize;
    }

    public function set fontSize(value:Number)
    {
        _fontSize = value;
        invalidate();
    }

    private var _text:String;
    public function get text():String
    {
        return _text;
    }

    public function set text(value:String)
    {
        value = value != null && value != "" ? "<span class='tf'>" + value + "</span>" : "";
        if (_text == value)
            return;
        _text = value;
        invalidate();
    }
    
    /////////////////////////////////////////////////////////////////
    // PRIVATE VARS

    private var fontName:String;
    private var multiline:Boolean;
    private var align:String;
    private var valign:String;

    /////////////////////////////////////////////////////////////////
    // OVERRIDES

    // override
    public function configUI()
    {
        //Logger.add("Label.configUI()");

        super.configUI();

        if (textField == null)
        {
            textField = createTextField("textField", 0, 0, 0, width, height);
            //textField.border = true;
            //textField.borderColor = 0xFFFF00;
            textField.autoSize = align || "left";
            textField.verticalAutoSize = valign || "top";
            //textField.align = align || "left";
            //textField.verticalAlign = valign || "top";
            textField.multiline = multiline;
            textField.wordWrap = multiline;
            textField.antiAliasType = "advanced";
            textField.html = true;
            textField.selectable = false;
            textField.styleSheet = Utils.createStyleSheet(Utils.createCSS("tf", color, fontName, fontSize));
            textField._alpha = alpha;
        }
    }

    // override
    public function setSize(width:Number, height:Number)
    {
        super.setSize(width, height);
        
        textField._width = width;
        textField._height = height;
    }

    // override
    public function draw()
    {
        textField.htmlText = text;
    }
}
