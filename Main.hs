{-# LANGUAGE EmptyDataDecls #-}
module Main where

import Prelude
import Player
import Types
import FFI
data Event

alert :: String -> Fay ()
alert = ffi "alert(%1)"

setBodyHtml :: String -> Fay ()
setBodyHtml = ffi "document.body.innerHTML = %1"

addWindowEvent :: String -> (Event -> Fay ()) -> Fay ()
addWindowEvent = ffi "window.addEventListener(%1, %2)"

setupJS :: [String] -> (Event -> Fay ()) -> Fay ()
setupJS = ffi "Canvas.setup(%1, %2)"


google = "luigi.png"

me = Player {loc = Loc {x = 0, y = 0}}

main :: Fay ()
main = do
  addWindowEvent "load" (\_ -> do
    setupJS [google] (\_ -> do
      drawImage google 0 0
      putStrLn "done"
      )
    )
