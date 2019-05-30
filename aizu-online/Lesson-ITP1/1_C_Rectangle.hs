{-- Rectangle
 -
 - たて a cm よこ b cm の長方形の面積と周の長さを求めるプログラムを作れ。
 - Input: a と b が1つの空白で区切られて与えられる。
 - Output: 面積と周の長さを、1つの空白で区切って1行に出力しろ。
 - Constraints: 1 <= a,b <= 100
 -}

-- exec & logic
main = do
  inNum <- getInts
  let square = (inNum !! 0) * (inNum !! 1)
  let perimeter = (inNum !! 0) * 2 + (inNum !! 1) * 2
  putStrLn ((show square) ++ [' '] ++ (show perimeter))

-- util
getInt :: (String -> Int)
getInt x = read x :: Int

getInts = do
  x <- getLine
  let y = (map$getInt)$words x
  return y
