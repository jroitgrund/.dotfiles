import XMonad
import XMonad.Config.Mate
import XMonad.Util.EZConfig

myManageHook = composeAll
  [ className =? "Do" --> doIgnore
  ]

myModMask = mod4Mask

main = xmonad $ mateConfig {
    terminal = "urxvt"
  , modMask = myModMask
  , manageHook = myManageHook <+> manageHook mateConfig
} `removeKeys` [(myModMask, xK_p)]
