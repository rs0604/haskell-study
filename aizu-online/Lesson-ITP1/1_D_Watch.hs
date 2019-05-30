{-- Watch
 - 秒単位の時間 S が与えられるので、h:m:s の形式へ変換して出力してください。
 - ここで、h は時間、m は 60 未満の分、s は 60 未満の秒とします。
 -
 - Input:
 -   S が 1行に与えられる
 - Output:
 -   h 、m、s を :（コロン）区切りで１行に出力してください。
 -   数値が１桁の場合、0 を付けて２桁表示をする必要はありません。
 - Constraints:
 -   0 <= S <= 86400
 -}

-- exec & logic
main = do
  inNum <- getInt
  let hours = inNum `div` 3600 :: Int
  let minutes = (inNum `mod` 3600) `div` 60
  let seconds = (inNum `mod` 60)
  putStrLn ((show hours) ++ [':'] ++ (show minutes) ++ [':'] ++ (show seconds))

-- util
getInt = do
  x <- getLine
  let intValue = read x :: Int
  return intValue
