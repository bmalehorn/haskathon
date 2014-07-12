{-# LANGUAGE EmptyDataDecls #-}
module Main where

import Prelude
import qualified Player
import qualified Types
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

draw :: String -> Int -> Int -> Fay ()
draw = ffi "Canvas.drawImage(%1, %2, %3)"

google = "https://www.google.com/images/srpr/logo11w.png"

main :: Fay ()
main = do
  addWindowEvent "load" (\_ -> do
    setupJS [google] (\_ -> do
      ffi "console.log(46)" :: Fay ()
      draw google 0 0
      putStrLn "done"
      )
    )
