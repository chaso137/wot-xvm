/**
 * @author sirmax2
 */
import com.xvm.Config;
import com.xvm.Utils;
import com.xvm.VehicleInfoData;
import com.xvm.VehicleInfoData2;
import com.xvm.VehicleInfoDataAvg;
import com.xvm.VehicleInfoDataTop;

class com.xvm.VehicleInfo
{
    // icon = "../maps/icons/vehicle/contour/ussr-IS-3.png"
    // return: "ussr-IS-3"
    public static function getVehicleName(icon: String): String
    {
        icon = icon.slice(icon.lastIndexOf("/") + 1, icon.lastIndexOf("."));
        icon = Utils.trim(icon);
        return icon;
    }

    // icon = "../maps/icons/vehicle/contour/ussr-IS-3.png"
    // return: "IS-3"
    public static function getVName(icon: String): String
    {
        icon = getVehicleName(icon);
        icon = icon.slice(icon.indexOf("-") + 1);
        icon = Utils.trim(icon);
        return icon;
    }
    
    // icon = "../maps/icons/vehicle/contour/ussr-IS-3.png"
    public static function getInfo1(icon: String): Object
    {
        return VehicleInfoData.data[getName1(icon)] || null;
    }

    // icon = "../maps/icons/vehicle/contour/ussr-IS-3.png"
    public static function getInfo2(icon: String): Object
    {
        var vn = getName2(icon);
        var res = VehicleInfoData2.data[vn];
        if (!res)
            return null
        res.avg = VehicleInfoDataAvg.data[vn] || null;
        res.top = VehicleInfoDataTop.data[vn] || null;
        return res;
    }

    public static function getVehicleNamesData():Object
    {
        var result:Object = {};
        for (var vname:String in VehicleInfoData.data)
            result[vname] = VehicleInfoData.data[vname].name;
        return result;
    }

    public static function mapVehicleName(iconSource:String, originalName:String):String
    {
        try
        {
            return Config.s_config.vehicleNames[getName1(iconSource)] || originalName;
        }
        catch (ex:Error)
        {
            return originalName;
        }
    }

    public static function GetVTypeValue(iconSource:String): String
    {
        var vi2 = com.xvm.VehicleInfo.getInfo2(iconSource);
        if (vi2 == null)
            return "";
        var vtype = vi2.type;
        if (!vtype || !Config.s_config.texts.vtype[vtype])
            return "";
        return Config.s_config.texts.vtype[vtype];
    }
    
    // icon = "../maps/icons/vehicle/contour/ussr-IS-3.png"
    // return: "is_3"
    public static function getName2(icon: String): String
    {
        icon = icon.slice(icon.lastIndexOf("/") + 1, icon.lastIndexOf("."));
        icon = icon.slice(icon.indexOf("-") + 1);
        icon = Utils.trim(icon);
        icon = icon.split("-").join("_").toLowerCase();
        return icon;
    }

    // icon = "../maps/icons/vehicle/contour/ussr-IS-3.png"
    // return: "ussr_IS_3"
    public static function getName1(icon: String): String
    {
        icon = icon.slice(icon.lastIndexOf("/") + 1, icon.lastIndexOf("."));
        icon = icon.split("-").join("_");
        icon = Utils.trim(icon);
        return icon;
    }
}
