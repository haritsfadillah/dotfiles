import XMonad
import XMonad.Config.Desktop
import XMonad.Util.EZConfig
import XMonad.Util.SpawnOnce
import Data.Monoid
import System.Exit

import qualified XMonad.StackSet as W
import qualified Data.Map        as M

------------------------------------------------------------------------
-- Basic configuration
myTerminal = "urxvt"
myModMask  = mod1Mask

myFocusedBorderColor = "#000000"

------------------------------------------------------------------------
-- Custom key bindings
myKeyBindings = 
    [ ("M-x b"                  , spawn "vivaldi-stable")
    
    -- Calculator
    , ("M-x c"                  , spawn "gnome-calculator")
    , ("<XF86Calculator>"       , spawn "gnome-calculator")
    
    -- Mail
    , ("M-x m"                  , spawn "mailspring")

    -- File explorer
    , ("M-x x"                  , spawn "nautilus")

    -- Audio control
    , ("<XF86AudioRaiseVolume>" , spawn "pactl set-sink-volume @DEFAULT_SINK@ +5%")
    , ("<XF86AudioLowerVolume>" , spawn "pactl set-sink-volume @DEFAULT_SINK@ -5%")
    , ("<XF86AudioMute>"        , spawn "pactl set-sink-mute @DEFAULT_SINK@ toggle")
    ]

------------------------------------------------------------------------
-- Window rules
myManageHook = composeAll
    [ className =? "MPlayer"        --> doFloat
    , className =? "Gimp"           --> doFloat
    , className =? "Steam"          --> doFloat
    , resource  =? "desktop_window" --> doIgnore
    , resource  =? "kdesktop"       --> doIgnore 
    ]
myEventHook = mempty

------------------------------------------------------------------------
-- Status bars and logging
myLogHook = return ()

------------------------------------------------------------------------
-- Startup hook
myStartupHook = return ()

------------------------------------------------------------------------
baseConfig = desktopConfig
    { terminal           = myTerminal
    , modMask            = myModMask
    , focusedBorderColor = myFocusedBorderColor
    , manageHook         = myManageHook
    , handleEventHook    = myEventHook
    , logHook            = myLogHook
    , startupHook        = myStartupHook
    }
    `additionalKeysP` myKeyBindings
    

main = xmonad baseConfig
