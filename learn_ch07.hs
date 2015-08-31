import Data.List
import Data.Char
import Data.Map
import Data.Map

incr:: Int->Int
incr x = x + 1

bar:: Int->Int
bar x = x * 2

foo ::  Int->Int->Int
foo x y = incr x + y


mapTest::Int->Int
mapTest x = x * 2

-- fil :: a -> String
-- fil x = "foo bar" ++ (show x)

xaas :: [a] -> String
xaas xs = show (length xs)

countWords :: String -> [(Int, [String])]
countWords = map (\xs -> (length xs, xs)) . group . words 

-- ch.6
isIn :: (Eq a) => [a] -> [a] -> Bool
--needle `isIn` haystack = any (needle `isPrefixOf` ) (tails haystack)
isIn needle haystack = any (isPrefixOf needle) (tails haystack)

encode :: Int -> String -> String
encode offset msg = map (\c -> chr $ ord c + offset) msg 

-- phonebook
--
phonebook = 
  [("sugino", "090-0000-3211")
  ,("taka", "555-5555-5555")
  ,("yama", "111-1111-1234")
  ,("hash", "999-9999-1222")
  ,("mura", "888-8888-8888")
  ]

