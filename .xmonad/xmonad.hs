import XMonad
import XMonad.Config.Mate
import XMonad.Hooks.SetWMName
import XMonad.Layout.NoBorders
import XMonad.Util.EZConfig

myManageHook = composeAll
  [ className =? "Do" --> doIgnore
  ]

myModMask = mod4Mask

main = xmonad $ mateConfig {
    terminal = "urxvt"
  , modMask = myModMask
  , layoutHook = smartBorders $ layoutHook mateConfig
  , manageHook = myManageHook <+> manageHook mateConfig
  , startupHook = setWMName "LG3D"
} `removeKeys` [(myModMask, xK_p)]
