{-- Small, Large, or Equal
 - ２つの整数 a, b を読み込んで、a と b の大小関係を出力するプログラムを作成して下さい。
 -
 - Input:
 - 入力は空白で区切られた２つの整数 a, b から構成されています。
 - Output:
 - a < b, a > b, a == b のいずれか
 - Constraints:
 - -1,000 ≤ a, b ≤ 1,000
-}

-- logic
compareInts :: [Int] -> String
compareInts inNums
  | a < b = "a < b"
  | a == b = "a == b"
  | otherwise = "a > b"
  where a = inNums !! 0
        b = inNums !! 1

-- exec
main = do
  inNum <- getInts
  putStrLn $ compareInts inNum

-- util
getInt :: (String -> Int)
getInt x = read x :: Int

getInts = do
  x <- getLine
  let y = (map$getInt)$words x
  return y
