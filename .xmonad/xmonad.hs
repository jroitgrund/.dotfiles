import XMonad
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Util.Cursor
import XMonad.Util.EZConfig

main = xmonad defaults

defaults = ewmh defaultConfig {
        terminal           = "xterm",
        borderWidth        = 0,
        modMask            = mod4Mask,
        layoutHook         = avoidStruts $ layoutHook defaultConfig,
        manageHook         = composeAll
          [
            manageDocks
            , isFullscreen --> doFullFloat
            , manageHook defaultConfig
          ],
        startupHook        = setDefaultCursor xC_left_ptr
    } `additionalKeys`
    [ ((mod4Mask, xK_p), spawn "dmenu_launch")
    , ((mod4Mask, xK_l), spawn "xlock")
    , ((mod4Mask, xK_b), sendMessage ToggleStruts)
    , ((mod1Mask .|. shiftMask, xK_c), spawn "copy")
    , ((mod1Mask .|. shiftMask, xK_v), spawn "paste")
    ]
