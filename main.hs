{-# LANGUAGE OverloadedStrings #-}
module Main where
import Graphics.Blank
import Control.Monad

main = blankCanvas 3000{ events = ["mousedown", "mouseup", "mousemove" , "touchstart", "touchmove", "touchend", "touchcancel"],
   middleware = [],
  debug = False } $ \ ct -> forever $ do
        ev <- wait ct
        print ev
