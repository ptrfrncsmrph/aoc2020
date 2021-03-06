{-# LANGUAGE BlockArguments #-}

module Day01.Main where

import AOCPrelude

solve :: [Int] -> Int
solve xs = head do
  x : ts <- tails xs
  y : ts' <- tails ts
  z <- ts'
  guard (x + y + z == 2020)
  pure (x * y * z)

main :: IO ()
main = do
  input <- readFile "src/Day01/input"
  input
    & lines
    & map read
    & solve
    & print