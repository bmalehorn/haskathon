{-
 -
 - Operations on the player. 
 -
 -}

module Player(Player, imgSrcs) where

import Prelude
import Types

imgSrc = "luigi.png"
imgSrcs = [imgSrc]

data Player = Player { sprite :: String, loc :: Loc }
