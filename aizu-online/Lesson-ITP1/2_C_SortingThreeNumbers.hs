{-- SortingThreeNumbers
 - 3つの整数を読み込み、それらを値が小さい順に並べて出力するプログラムを作成して下さい。
 -
 - Input:
 -   3つの整数が空白で
 - Output:
 -   小さい順に並べ替えた３つの整数を１行に出力して下さい。整数の間に１つの空白を入れて下さい。
 - Constraints:
 -   1 <= n <= 10000
 -}
-- logic
sortingThreeNumbers :: [Int] -> String
sortingThreeNumbers


-- exec
main = do
  inNums <- getInts
  putStrLn $ sortingThreeNumbers inNums
  
-- util
getInt :: (String -> Int)
getInt x = read x :: Int

getInts = do
  x <- getLine
  let y = (map$getInt)$words x
  return y
