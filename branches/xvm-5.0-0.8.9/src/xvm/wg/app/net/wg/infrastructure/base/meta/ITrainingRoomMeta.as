package net.wg.infrastructure.base.meta
{
   import flash.events.IEventDispatcher;


   public interface ITrainingRoomMeta extends IEventDispatcher
   {
          
      function showTrainingSettingsS() : void;

      function selectCommonVoiceChatS(param1:Number) : void;

      function startTrainingS() : void;

      function swapTeamsS() : void;

      function changeTeamS(param1:Number, param2:Number) : void;

      function closeTrainingRoomS() : void;

      function showPrebattleInvitationsFormS() : void;

      function onEscapeS() : void;

      function as_updateComment(param1:String) : void;

      function as_updateMap(param1:Number, param2:Number, param3:String, param4:String, param5:String, param6:String) : void;

      function as_updateTimeout(param1:String) : void;

      function as_setTeam1(param1:Array) : void;

      function as_setTeam2(param1:Array) : void;

      function as_setOther(param1:Array) : void;

      function as_setInfo(param1:Object) : void;

      function as_setArenaVoipChannels(param1:Number) : void;

      function as_disableStartButton(param1:Boolean) : void;

      function as_disableControls(param1:Boolean) : void;

      function as_startCoolDownVoiceChat(param1:Number) : void;

      function as_startCoolDownSetting(param1:Number) : void;

      function as_startCoolDownSwapButton(param1:Number) : void;

      function as_setPlayerStateInTeam1(param1:Number, param2:String, param3:String, param4:String, param5:String) : void;

      function as_setPlayerStateInTeam2(param1:Number, param2:String, param3:String, param4:String, param5:String) : void;

      function as_setPlayerStateInOther(param1:Number, param2:String, param3:String, param4:String, param5:String) : void;

      function as_setPlayerChatRosterInTeam1(param1:Number, param2:Number) : void;

      function as_setPlayerChatRosterInTeam2(param1:Number, param2:Number) : void;

      function as_setPlayerChatRosterInOther(param1:Number, param2:Number) : void;
   }

}