﻿/**
 * ...
 * @author sirmax2
 */
import flash.filters.DropShadowFilter;
import com.greensock.TimelineLite;
import com.greensock.TweenLite;
import wot.utils.Config;
import wot.utils.Stat;

class wot.BattleLoading extends net.wargaming.BattleLoading
{
  public static var infoField = null;

  function BattleLoading()
  {
    super();
    Config.LoadConfig();

    if (!infoField)
    {
      infoField = this.createTextField("info", getNextHighestDepth(), 0, 0, 140, 31);
      infoField.wordWrap = true;
      var textFormat: TextFormat = new TextFormat("$FieldFont", 12, 0x000000, true, false, false, null, null, "left");
      infoField.setNewTextFormat(textFormat);

      var shadow: DropShadowFilter = new DropShadowFilter();
      shadow.blurX = shadow.blurY = 3;
      shadow.angle = 0;
      shadow.distance = 0;
      shadow.color = 0x000000;
      shadow.alpha = 100;
      shadow.strength = 1;
      infoField.filters = [shadow];

      infoField.textColor = 0xFFFFFF;
      infoField._x = _width / 2;
      infoField._y = 0;
      infoField._height = 100;
      infoField._width = 500;
      infoField._alpha = 100;
      infoField._visible = true;
    }

    setInfoFieldData({ });

    // Force stats loading after 1 sec (for 12x12 battles or FogOfWar)
    var timer: TimelineLite = new TimelineLite({onComplete:StartLoadData, onCompleteParams:[]});
    timer.insert(new TweenLite(null, 1));
  }

  public function StartLoadData()
  {
    if (Config.s_config.rating.showPlayersStatistics)
      Stat.StartLoadData();
  }

  public function configUI()
  {
    super.configUI();
  }

  public static function setInfoFieldData(data)
  {
    if (!infoField)
      return;

    var txt: String = "XVM v" + wot.utils.Defines.XVM_VERSION + "\n";

    if (data.ver && wot.utils.Utils.compareVersions(String(data.ver), wot.utils.Defines.XVM_VERSION) == 1)
    {
      txt = "XVM: New version available: v" + String(data.ver) + " (current is v" + wot.utils.Defines.XVM_VERSION + ")\n";
      if (data.message)
        txt += data.message + "\n";
      infoField.textColor = 0xAAFFAA;
    }

    if (data.error)
    {
      txt += data.error + "\n";
      infoField.textColor = 0xFF8080;
    }

    if (Stat.s_loaded)
    {
      var chances = Stat.GetChances();
      if (chances)
      {
        txt += "Chances:";
        txt += "\n  m = " + chances.m + " (" + chances.m1 + " / " + chances.m2 + ")";
        txt += "\n  k = " + chances.k + " (" + chances.k1 + " / " + chances.k2 + ")";
      }
    }

    infoField.text = txt;
  }
}