-- logic
compareThreeInts :: [Int] -> String
compareThreeInts i
  | i!!0 < i!!1 && i!!1 < i!!2 = "Yes"
  | otherwise = "No"

-- exec
main = do
  inNum <- getInts
  putStrLn $ compareThreeInts inNum

-- util
getInt :: (String -> Int)
getInt x = read x :: Int

getInts = do
  x <- getLine
  let y = (map$getInt)$words x
  return y
