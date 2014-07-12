{-
 -
 - Operations on the player. 
 -
 -}

module Player where

type Image = String
type Location = (Float, Float)

data Player = Player { sprite :: Image, loc :: Location }
