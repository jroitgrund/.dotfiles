import XMonad
import XMonad.Config.Mate
import qualified Data.Map as M

myManageHook = composeAll
  [ className =? "Do" --> doIgnore
  ]

main = xmonad mateConfig {
    terminal = "urxvt"
  , modMask = mod4Mask
  , manageHook = myManageHook <+> manageHook mateConfig
}
