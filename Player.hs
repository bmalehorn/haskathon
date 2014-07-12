{-
 -
 - Operations on the player. 
 -
 -}

module Player where

import Prelude
import Types

data Player = Player { sprite :: String, loc :: Loc }
