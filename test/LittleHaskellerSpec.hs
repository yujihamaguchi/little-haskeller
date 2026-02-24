module LittleHaskellerSpec (spec) where

import Test.Hspec
import LittleHaskeller

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
