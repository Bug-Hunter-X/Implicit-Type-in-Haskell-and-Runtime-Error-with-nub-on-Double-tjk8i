```haskell
import Data.List (nub)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = nub xs
  print ys
```
This code will compile and run without errors. However, it relies on the implicit type of `xs`.  If you modify this to:
```haskell
import Data.List (nub)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5 :: Double]
  let ys = nub xs
  print ys
```
It will fail at runtime, because `nub` is only defined for `Ord a => [a]`, and `Double` doesn't have a suitable `Ord` instance in all cases (NaN introduces complications).  The error may be cryptic, especially for someone not familiar with Haskell's type system.