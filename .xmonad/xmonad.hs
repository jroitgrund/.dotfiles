import XMonad
import XMonad.Config.Mate
import qualified Data.Map as M

myManageHook = composeAll
  [ className =? "Do" --> doIgnore
  ]

main = xmonad mateConfig {
    terminal = "urxvt"
  , manageHook = myManageHook <+> manageHook mateConfig
}
