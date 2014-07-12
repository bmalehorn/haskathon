module Types where

import Prelude

-- location on the map that you're at
data Loc = Loc {x :: Double, y :: Double}

-- direction your feet are going: D is the default
data Dir = U | D | L | R
