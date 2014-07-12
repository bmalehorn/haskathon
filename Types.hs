module Types where

import Prelude
import FFI

drawImage :: String -> Double -> Double -> Fay ()
drawImage = ffi "Canvas.drawImage(%1, %2, %3)"

-- location on the map that you're at
data Loc = Loc {x :: Double, y :: Double}

-- direction your feet are going: D is the default
data Dir = U | D | L | R

class Drawable a where
  draw :: a -> Fay ()

