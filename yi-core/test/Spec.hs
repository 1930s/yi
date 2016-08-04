import Test.Tasty

import qualified Yi.CompletionTreeTests as CompletionTree (testSuite)
import qualified Yi.TagTests            as Tag            (testSuite)
import qualified Yi.Mode.CommonTests    as Mode.Common    (testSuite)

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "all" 
  [ CompletionTree.testSuite
  , Tag.testSuite
  , Mode.Common.testSuite
  ]
