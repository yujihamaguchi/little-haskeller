module LittleHaskellerSpec (spec) where

import Control.Exception (evaluate)
import LittleHaskeller
import Test.Hspec

spec :: Spec
spec = do
  describe "mySum" $ do
    it "1" $ mySum [] `shouldBe` (0 :: Int)
    it "2" $ mySum [1] `shouldBe` (1 :: Int)
    it "3" $ mySum [1, 2] `shouldBe` (3 :: Int)
    it "4" $ mySum [1, 2, 3] `shouldBe` (6 :: Int)

  describe "myZip" $ do
    it "1" $ myZip [] [] `shouldBe` ([] :: [(Int, Int)])
    it "2" $ myZip [] [1] `shouldBe` ([] :: [(Int, Int)])
    it "3" $ myZip [1] [] `shouldBe` ([] :: [(Int, Int)])
    it "4" $ myZip [1, 2] [3, 4] `shouldBe` ([(1, 3), (2, 4)] :: [(Int, Int)])
    it "5" $ myZip [1, 2] ['a', 'b'] `shouldBe` ([(1, 'a'), (2, 'b')] :: [(Int, Char)])
    it "6" $ myZip [1, 2] ['x'] `shouldBe` ([(1, 'x')] :: [(Int, Char)])
    it "7" $ myZip [1] ['x', 'y'] `shouldBe` ([(1, 'x')] :: [(Int, Char)])

  describe "myQuickSort" $ do
    it "1" $ myQuickSort [] `shouldBe` ([] :: [Int])
    it "2" $ myQuickSort [1] `shouldBe` ([1] :: [Int])
    it "3" $ myQuickSort ['a'] `shouldBe` (['a'] :: [Char])
    it "4" $ myQuickSort [3, 2, 1] `shouldBe` ([1, 2, 3] :: [Int])
    it "5" $ myQuickSort [2, 3, 1] `shouldBe` ([1, 2, 3] :: [Int])
    it "6" $ myQuickSort [1, 2, 3] `shouldBe` ([1, 2, 3] :: [Int])
    it "7" $ myQuickSort [3, 2, 3, 1] `shouldBe` ([1, 2, 3, 3] :: [Int])
    it "8" $ myQuickSort ['c', 'b', 'a'] `shouldBe` (['a', 'b', 'c'] :: [Char])
    it "9" $ myQuickSort ['b', 'c', 'a'] `shouldBe` (['a', 'b', 'c'] :: [Char])
    it "10" $ myQuickSort ['a', 'b', 'c'] `shouldBe` (['a', 'b', 'c'] :: [Char])

  describe "myProduct" $ do
    it "1" $ myProduct [] `shouldBe` (1 :: Int)
    it "2" $ myProduct [1] `shouldBe` (1 :: Int)
    it "3" $ myProduct [1, 2, 3] `shouldBe` (6 :: Int)

  describe "reverseQuickSort" $ do
    it "1" $ reverseQuickSort [] `shouldBe` ([] :: [Int])
    it "2" $ reverseQuickSort [1] `shouldBe` ([1] :: [Int])
    it "3" $ reverseQuickSort [1, 2, 3] `shouldBe` ([3, 2, 1] :: [Int])
    it "4" $ reverseQuickSort [2, 3, 1] `shouldBe` ([3, 2, 1] :: [Int])
    it "5" $ reverseQuickSort [3, 2, 1] `shouldBe` ([3, 2, 1] :: [Int])
    it "6" $ reverseQuickSort [1, 2, 2, 3] `shouldBe` ([3, 2, 2, 1] :: [Int])
    it "7" $ reverseQuickSort [-1, 0, 1] `shouldBe` ([1, 0, -1] :: [Int])

  describe "myLast" $ do
    it "1" $ evaluate (myLast ([] :: [Int])) `shouldThrow` errorCall "empty list"
    it "2" $ myLast [1] `shouldBe` (1 :: Int)
    it "3" $ myLast [1, 2] `shouldBe` (2 :: Int)
    it "4" $ myLast [1, 2, 3] `shouldBe` (3 :: Int)
