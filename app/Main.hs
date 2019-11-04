module Main where

import Lib
import Grid
import qualified Data.Text.IO as T
import System.Console.ANSI
import Patterns
import Graph

-- printStep :: Graph Coord Dir (SuperPos (Option Char)) -> IO ()
-- printStep gr = do
--     let currentStep = gridToText $ showSuper gr
--     let waviness = gridToText $ fmap showSuperPosSize gr
--     setCursorPosition 0 0
--     -- T.putStrLn $ currentStep
--     T.putStrLn $ laminate [currentStep, waviness]

main :: IO ()
main = do
    clearScreen
    hideCursor
    run Nothing 20 20 tiledText
    showCursor
