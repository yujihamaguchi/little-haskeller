module LittleHaskellerSpec (spec) where

import Test.Hspec
import LittleHaskeller

spec :: Spec
spec = do
  describe "mySum" $ do
    it "returns 0 for empty list" $
      mySum [] `shouldBe` (0 :: Int)

    it "returns 1 for [1]" $
      mySum [1] `shouldBe` (1 :: Int)

    it "returns 3 for [1, 2]" $
      mySum [1, 2] `shouldBe` (3 :: Int)

    it "returns 6 for [1, 2, 3]" $
      mySum [1, 2, 3] `shouldBe` (6 :: Int)
