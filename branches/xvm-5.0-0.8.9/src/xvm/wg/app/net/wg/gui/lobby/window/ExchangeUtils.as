package net.wg.gui.lobby.window
{
   import flash.filters.DropShadowFilter;
   import net.wg.gui.components.controls.IconText;


   public class ExchangeUtils extends Object
   {
          
      public function ExchangeUtils() {
         super();
      }

      public static const STATE_SMALL_MONEY:String = "small_money";

      public static const ICON_TYPE_BLACK:String = "black";

      public static function getGlow(param1:String, param2:Number=NaN) : Array {
         var _loc3_:* = NaN;
         var _loc4_:DropShadowFilter = new DropShadowFilter();
         _loc4_.distance = 0;
         _loc4_.angle = 0;
         _loc4_.alpha = 0.5;
         _loc4_.blurX = 4;
         _loc4_.blurY = 4;
         _loc4_.quality = 2;
         switch(param1)
         {
            case IconText.GOLD:
               _loc3_ = 16736256;
               param2 = isNaN(param2)?0.8:param2;
               break;
            case IconText.CREDITS:
               _loc3_ = 13556185;
               param2 = isNaN(param2)?0.3:param2;
               break;
            case IconText.FREE_XP:
            case IconText.ELITE_XP:
               _loc3_ = 14570496;
               param2 = isNaN(param2)?0.6:param2;
               break;
            case IconText.VCOIN:
               _loc3_ = 16736256;
               param2 = isNaN(param2)?0.6:param2;
               break;
            case ICON_TYPE_BLACK:
               _loc3_ = 0;
               param2 = isNaN(param2)?0.3:param2;
               break;
            case STATE_SMALL_MONEY:
               _loc3_ = 16718080;
               param2 = isNaN(param2)?0.6:param2;
               break;
         }
         _loc4_.color = _loc3_;
         _loc4_.strength = param2;
         return [_loc4_];
      }
   }

}