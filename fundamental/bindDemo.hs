-- トップレベル変数
-- 他の言語で言うところの「グローバル変数：
a :: Int
a = 0
b :: Int
b = 2
c :: Int
c = a + b

main :: IO ()
main = do
  -- トップレベル変数の出力
  print c
 
  -- ローカル変数 where 使う箇所の下で定義する。独特な書き方なので、定義部分を後回しにしないと
  -- よっぽど見づらい、などでない限りは避けたほうが無難と思われる
  print localValue
  where
    localA :: Int
    localA = 1
    localB :: Int
    localB = 2
    localValue :: Int
    localValue = localA + localB
  
  -- letの値の出力
  letFunc
 
letFunc :: IO ()
letFunc = do
  let localC :: Int
      localC = 3
      localD :: Int
      localD = 4
      localE :: Int
      localE = localC + localD
  print localE

-- let, where, let...in の使い分けはどうする？
