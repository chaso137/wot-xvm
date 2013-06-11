/**
 * ...
 * @author sirmax2
 */
class wot.utils.Defines
{
    // Global versions
    public static var XVM_VERSION: String = "3.5.0";
    public static var XVM_INTRO: String = "www.modxvm.com";
    public static var WOT_VERSION: String = "0.8.5";
    public static var CONFIG_VERSION: String = "1.5.0";
    public static var EDITOR_VERSION: String = "0.42";

    public static var DEFAULT_CONFIG_NAME: String = "XVM.xvmconf";

    // MAX_PATH is 259 on NTFS
    public static var MAX_PATH: Number = 100;

    // Path to Dokan MountPoint
    public static var DOKAN_MP = "../../../.stat/";

    // WebDav commands
    public static var COMMAND_LOG: String = DOKAN_MP + "@LOG";
    public static var COMMAND_SET: String = DOKAN_MP + "@SET";
    public static var COMMAND_ADD: String = DOKAN_MP + "@ADD";
    public static var COMMAND_VAR: String = DOKAN_MP + "@VAR";
    public static var COMMAND_LOGSTAT: String = DOKAN_MP + "@LOGSTAT";
    public static var COMMAND_GET_ASYNC: String = DOKAN_MP + "@GET_ASYNC";
    public static var COMMAND_GET_PLAYERS: String = DOKAN_MP + "@GET_PLAYERS";
    public static var COMMAND_GET_VERSION: String = DOKAN_MP + "@GET_VERSION";
    public static var COMMAND_INFO_ASYNC: String = DOKAN_MP + "@INFO_ASYNC";

    // Default path to vehicle icons (relative)
    public static var CONTOUR_ICON_PATH: String = "../maps/icons/vehicle/contour/";

    // Team
    public static var TEAM_ALLY: Number = 1;
    public static var TEAM_ENEMY: Number = 2;

    // Field Type
    public static var FIELDTYPE_NONE: Number = 0;
    public static var FIELDTYPE_NICK: Number = 1;
    public static var FIELDTYPE_VEHICLE: Number = 2;

    // Dead State
    public static var DEADSTATE_NONE: Number = 0;
    public static var DEADSTATE_ALIVE: Number = 1;
    public static var DEADSTATE_DEAD: Number = 2;

    // Dynamic color types
    public static var DYNAMIC_COLOR_EFF: Number = 1;
    public static var DYNAMIC_COLOR_RATING: Number = 2;
    public static var DYNAMIC_COLOR_KB: Number = 3;
    public static var DYNAMIC_COLOR_HP: Number = 4;
    public static var DYNAMIC_COLOR_HP_RATIO: Number = 5;
    public static var DYNAMIC_COLOR_TBATTLES: Number = 6;
    public static var DYNAMIC_COLOR_TDB: Number = 7;
    public static var DYNAMIC_COLOR_TDV: Number = 8;
    public static var DYNAMIC_COLOR_TFB: Number = 9;
    public static var DYNAMIC_COLOR_TSB: Number = 10;
    public static var DYNAMIC_COLOR_E: Number = 11;
    public static var DYNAMIC_COLOR_TWR: Number = 12;
    public static var DYNAMIC_COLOR_WN: Number = 13;
    public static var DYNAMIC_COLOR_X: Number = 14;

    // Dynamic alpha types
    //public static var DYNAMIC_ALPHA_EFF: Number = 1;
    //public static var DYNAMIC_ALPHA_RATING: Number = 2;
    //public static var DYNAMIC_ALPHA_KB: Number = 3;
    public static var DYNAMIC_ALPHA_HP: Number = 4;
    public static var DYNAMIC_ALPHA_HP_RATIO: Number = 5;
    //public static var DYNAMIC_ALPHA_TBATTLES: Number = 6;

    // Damage flag at Xvm.as: updateHealth
    public static var FROM_UNKNOWN: Number = 0;
    public static var FROM_ALLY: Number = 1;
    public static var FROM_ENEMY: Number = 2;
    public static var FROM_SQUAD: Number = 3;
    public static var FROM_PLAYER: Number = 4;

    // Text direction
    public static var DIRECTION_DOWN = 1;
    public static var DIRECTION_UP = 2;

    // Text insert order
    public static var INSERTORDER_BEGIN = DIRECTION_DOWN;
    public static var INSERTORDER_END = DIRECTION_UP;

    // Load states
    public static var LOADSTATE_NONE = 1;    // not loaded
    public static var LOADSTATE_LOADING = 2; // loading
    public static var LOADSTATE_DONE = 3;    // statistics loaded
    public static var LOADSTATE_UNKNOWN = 4; // unknown vehicle in FogOfWar

    // Level in roman numerals
    public static var ROMAN_LEVEL: Array = [ "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X" ];
}