{-# LANGUAGE OverloadedStrings #-}
module Main where
import Graphics.Blank
import Control.Monad

disableZoom ct = send ct $ eval
   "document.addEventListener(\"touchstart\",function(e){\
        \if (e.touches.length > 1) { e.preventDefault(); }},{passive: false});"

main = blankCanvas 3000{ events = ["mousedown", "mouseup", "mousemove" , "touchstart", "touchmove", "touchend", "touchcancel"],
   middleware = [],
  debug = False } $ \ ct -> do
    disableZoom ct
    forever $ do
        ev <- wait ct
        print ev

