{-# LANGUAGE EmptyDataDecls #-}
module Main where

import Prelude
import qualified Common as C
import qualified Player as P
import qualified Wall as W
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

me = P.Player {P.loc = C.Loc {C.x = 0, C.y = 0}}

main :: Fay ()
main = do
  addWindowEvent "load" (\_ -> do
    setupJS [google] (\_ -> do
      C.drawImage google 0 0
      putStrLn "done"
      )
    )
