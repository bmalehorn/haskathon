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
import Types

imgSrc = "luigi.png"
imgSrcs = [imgSrc]

data Player = Player { loc :: Loc }

instance Drawable Player where
  draw p = drawImage imgSrc (x $ loc p) (y $ loc p)

