{-- x cubic
 - 引数で受け取ったひとつの整数を3乗したものを標準出力に返す
 -}

-- logic & exec
main = do
  x <- getLine
  let intValue = read x :: Int
  putStrLn (show (intValue ^ 3) )
