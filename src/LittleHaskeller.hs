{-# OPTIONS_GHC -Wno-missing-export-lists #-}
module LittleHaskeller where

-- Q000: zip と同様の機能の関数 myZip を書け
myZip :: [a] -> [b] -> [(a, b)]
myZip (x:xs) (y:ys) = (x, y) : myZip xs ys
myZip _ _ = []

-- Q001: Haskell の sum と同様の機能の関数 mySum を書け。
-- (再帰を用いるパターン, foldl を用いるパターン)
--
-- sum :: (Num a) => [a] -> a
-- sum ns
--     数値のリスト ns の総和を返す。
--     see also: product, foldl
--         sum [1, 2, 3]  = 6
--         sum []         = 0

-- recursive
mySum :: (Num a) => [a] -> a
mySum [] = 0
mySum (x:xs) = x + mySum xs

-- foldl
-- mySum :: (Num a) => [a] -> a
-- mySum = foldl (+) 0
