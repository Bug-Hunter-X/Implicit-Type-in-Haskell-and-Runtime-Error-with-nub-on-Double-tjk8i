```haskell
import Data.List (nub)
import Data.List (sort, group, map)

-- Custom nub function to handle Double type
nub' :: (Eq a) => [a] -> [a]
nub' xs = map head $ group $ sort xs

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5 :: Double]
  let ys = nub' xs
  print ys
  let zs = [1, 2, 3, 4, 5]
  let ws = nub zs -- This works fine
  print ws
```
Alternatively, convert to a type that is Ord
```haskell
import Data.List (nub)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5 :: Int]
  let ys = nub xs
  print ys
```