package xvm.hangar.components.Profile
{
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import scaleform.clik.data.*;
    import scaleform.clik.events.*;
    import scaleform.clik.interfaces.*;
    import net.wg.infrastructure.exceptions.*;
    import net.wg.gui.events.*;
    import net.wg.gui.components.controls.*;
    import net.wg.gui.lobby.profile.pages.summary.*;
    import net.wg.gui.lobby.profile.pages.technique.*;
    import net.wg.gui.components.advanced.*;
    import com.xvm.*;
    import com.xvm.events.*;
    import com.xvm.io.*;
    import com.xvm.types.cfg.*;
    import com.xvm.l10n.Locale;
    import xvm.UI.profileSections.*;

    UI_TechniqueStatisticTab;

    public class Technique extends Sprite
    {
        protected var page:ProfileTechnique;

        protected var tiFilter:TextInput;

        private var techniqueListAdjuster:TechniqueListAdjuster;

        public function Technique(page:ProfileTechnique):void
        {
            this.page = page;

            // override renderer
            list.itemRenderer = UI_TechniqueRenderer;

            // Add summary item to the first line of technique list
            techniqueListAdjuster = new TechniqueListAdjuster(page);

            page.addEventListener(TechniquePageEvent.DATA_STATUS_CHANGED, viewChanged);

            // remove lower shadow (last item is looks bad with it)
            page.listComponent.lowerShadow.visible = false;

            // create filter controls
            if (Config.config.userInfo.showFilters)
                createControls();

            // post init
            techniqueListAdjuster.addEventListener(Event.INIT, delayedInit);
        }

        private function delayedInit():void
        {
            //Logger.add("delayedInit");
            // userInfo.sortColumn
            var bb:SortableHeaderButtonBar = page.listComponent.sortableButtonBar;
            var btnIndex:int = Math.abs(Config.config.userInfo.sortColumn) - 1;
            bb.selectedIndex = btnIndex;
            var b:SortingButton = bb.getButtonAt(btnIndex) as SortingButton;
            b.sortDirection = Config.config.userInfo.sortColumn < 0 ? SortingButton.DESCENDING_SORT : SortingButton.ASCENDING_SORT;
            list.selectedIndex = 0;

            // stat
            if (Config.config.rating.showPlayersStatistics  && Config.config.rating.enableUserInfoStatistics)
                Stat.loadUserData(this, onStatLoaded, getPlayerName(), false);
        }

        protected function get list():TechniqueList
        {
            return page.listComponent.techniqueList;
        }

        protected function getPlayerName():String
        {
            Logger.add("ERROR: Technique::getUserInfo() is abstract)");
            return null;
        }

        protected function createControls():void
        {
            //"filterFocused": true,
        }

        protected function viewChanged(e:TechniquePageEvent):void
        {
            page.removeEventListener(TechniquePageEvent.DATA_STATUS_CHANGED, viewChanged);

            try
            {
                var data:Array = page.stackComponent.buttonBar.dataProvider as Array;
                data[0].linkage = "xvm.UI.profileSections.UI_TechniqueStatisticTab";
                page.stackComponent.buttonBar.selectedIndex = -1;
                page.stackComponent.buttonBar.selectedIndex = 0;
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
        }

        // PRIVATE


        // STAT

        private function onStatLoaded():void
        {
            Logger.add("onStatLoaded: " + getPlayerName());
        }

    }
}