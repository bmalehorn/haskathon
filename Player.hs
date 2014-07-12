{-
 -
 - Operations on the player. 
 -
 -}

module Player (
    Player(..)
  , imgSrc
) where

import Prelude
import qualified Common as C

imgSrc = "luigi.png"
imgSrcs = [imgSrc]

data Player = Player { loc :: C.Loc }

instance C.Drawable Player where
  draw p = C.drawImage imgSrc (C.x $ loc p) (C.y $ loc p)

