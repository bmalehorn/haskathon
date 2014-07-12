module Wall (
    Wall(..)
  , imageSrcs
) where

import Prelude
import Types

imageSrc = "brick.png"
imageSrcs = [imageSrc]




data Player = Player { sprite :: String, loc :: Loc }
