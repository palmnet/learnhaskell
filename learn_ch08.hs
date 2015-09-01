import Sphere

data Shape = Circle Float Float Float | Rectangle Float Float Float Float
  deriving (Show)
area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)


--data Person = Person String String Int Float String String
--  deriving (Show)


data Person = Person {firstname::String
                     ,lastname::String
                     ,age::Integer
                     ,height::Float
                     ,phoneNumber::String
                     ,flavor::String}
  deriving (Show)


sugino = Person "sugino" "yasushi" 43 180.5 "0901743" "cokkie"
sugino2 = Person {firstname="Ryuichi", lastname="Sugino", age=46, height=170.5, phoneNumber="0561-41-2192", flavor="Bike"}

-- vector
data Vector a = Vector a a a deriving (Show)
vplus :: (Num a) => Vector a -> Vector a -> Vector a
(Vector i j k) `vplus` (Vector l m n) = Vector (i+l) (j+m) (k+n)

dotProd :: (Num a) => Vector a -> Vector a -> Vector a 
(Vector i j k) `dotProd` (Vector l m n) = Vector (i*l) (j*m) (k*n)

vmult:: (Num a) => Vector a -> a -> Vector a 
(Vector i j k) `vmult` m = Vector (i*m) (j*m) (k*m)



