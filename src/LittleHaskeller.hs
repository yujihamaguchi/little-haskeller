{-# OPTIONS_GHC -Wno-missing-export-lists #-}

module LittleHaskeller where

-- Q000: zip と同様の機能の関数 myZip を書け
myZip :: [a] -> [b] -> [(a, b)]
myZip [] _ = []
myZip _ [] = []
myZip (x : xs) (y : ys) = (x, y) : myZip xs ys

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
mySum (x : xs) = x + mySum xs

-- foldl
-- mySum :: (Num a) => [a] -> a
-- mySum = foldl (+) 0

-- Q002: クイックソート関数 myQuickSort を書け
myQuickSort :: (Ord a) => [a] -> [a]
myQuickSort [] = []
myQuickSort (x : xs) = myQuickSort lt ++ [x] ++ myQuickSort ge
  where
    lt = [x' | x' <- xs, x' < x]
    ge = [x' | x' <- xs, x' >= x]

-- Q003: product と同様の機能の関数( myProduct )を書け(再帰を用いるパターン、 fold を用いるパターン)
myProduct :: (Num a) => [a] -> a
-- recursive
myProduct [] = 1
myProduct (x : xs) = x * myProduct xs

-- foldl
-- myProduct = foldl (*) 1

-- Q004: リストを逆順に整列する関数 reverseQuickSort を再帰を用いて書け
reverseQuickSort :: (Ord a) => [a] -> [a]
reverseQuickSort [] = []
reverseQuickSort (x : xs) = reverseQuickSort ge ++ [x] ++ reverseQuickSort lt
  where
    ge = [x' | x' <- xs, x' >= x]
    lt = [x' | x' <- xs, x' < x]

-- Q005: last と同様の機能の関数 myLast を書け
myLast :: [a] -> a
myLast [] = error "empty list"
myLast [x] = x
myLast (_ : xs) = myLast xs

-- Q006: 偶数の長さを持つリストを半分ずつに分割する関数 halve を書け。
halve :: [a] -> ([a], [a])
halve xs = (take n xs, drop n xs)
  where
    n = (length xs) `div` 2