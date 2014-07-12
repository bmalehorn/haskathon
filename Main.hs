{-# LANGUAGE EmptyDataDecls #-}
module Main where

import Prelude
import FFI

data Event

alert :: String -> Fay ()
alert = ffi "alert(%1)"

setBodyHtml :: String -> Fay ()
setBodyHtml = ffi "document.body.innerHTML = %1"

addWindowEvent :: String -> (Event -> Fay ()) -> Fay ()
addWindowEvent = ffi "window.addEventListener(%1, %2)"

setupJS :: Fay ()
setupJS = ffi "Canvas.setup()"

greet :: Event -> Fay()
greet event = do
  setupJS
  --putStrLn "The document has loaded"
  --setBodyHtml "Hello HTML!"

main :: Fay ()
main = do
  addWindowEvent "load" greet
