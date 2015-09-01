module Sphere
( Circle
, volume
) where

data Circle = Float Float Float
  deriving (Show)

volume :: Float -> Float
volume radius = (4.0 / 5.0) * radius
