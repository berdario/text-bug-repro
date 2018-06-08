import           Lib
import           Test.Hspec

main :: IO ()
main = hspec $ do
    describe "Data.Text.IO.readFile" $ do
      it "should read the same contents as Prelude.readFile" $ do
        result <- readTheSame
        result `shouldBe` True
