""" xvm-stat (c) sirmax 2013 """

#####################################################################
# MOD INFO (mandatory)

XPM_MOD_VERSION    = "1.0.0"
XPM_MOD_URL        = "http://www.modxvm.com/"
XPM_MOD_UPDATE_URL = "http://www.modxvm.com/en/download-xvm/"
XPM_GAME_VERSIONS  = ["0.8.8.CT1", "0.8.8"]

#####################################################################

import BigWorld
import GUI
import _Scaleform
from pprint import pprint
from gui.mods.xpm import *
from XvmStat import g_xvm
from logger import log

#####################################################################
# event handlers

def handleKeyEvent(event):
    g_xvm.onKeyDown(event)

def FlashInit(self, swf, className = 'Flash', args = None, path = None):
    if IS_DEVELOPMENT:
        log("FlashInit: " + swf)
    self.addExternalCallback('xvm.cmd', lambda *args: g_xvm.onXvmCommand(self, *args))

#####################################################################
# Register events

# Early registration
#print ">>start"
from gui.Scaleform.Flash import Flash
RegisterEvent(Flash, '__init__', FlashInit)

# Delayed registration
def _RegisterEvents():
    #log(">>reg")
    #import game
    #RegisterEvent(game, 'handleKeyEvent', handleKeyEvent)

    #from Avatar import PlayerAvatar
    #RegisterEvent(PlayerAvatar, 'onEnterWorld', onEnterWorld)
    #RegisterEvent(PlayerAvatar, 'onLeaveWorld', onLeaveWorld)
    pass

BigWorld.callback(0.001, _RegisterEvents)