module Wall (
    Wall(..)
  , imgSrcs
) where

import Prelude
import qualified Common as C

imgSrc = "brick.png"
imgSrcs = [imgSrc]

data Wall = Wall { loc :: C.Loc }

instance C.Drawable Wall where
  draw wall = C.drawImage imgSrc (C.x $ loc wall) (C.y $ loc wall)
