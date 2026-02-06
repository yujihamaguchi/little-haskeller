module LittleHaskeller where

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
-- mySumFold :: (Num a) => [a] -> a
-- mySumFold = foldl (+) 0
