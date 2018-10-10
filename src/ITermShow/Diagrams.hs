{-# LANGUAGE FlexibleInstances, TypeFamilies, OverloadedStrings #-}
module ITermShow.Diagrams where

import Codec.Picture
import Debug.Trace
import Data.Typeable
import ITermShow
import Diagrams.Backend.Rasterific
import Diagrams
import Data.Semigroup

-- | You can use this in a type annotation to get the correct instance.
type ShowDiagram = Diagram B

-- | Convenience function for setting the correct type of a diagram.
draw :: QDiagram b v n m -> QDiagram b v n m
draw = id

instance (b ~ B, v ~ V2, n ~ Double, m ~ Any) => Show (QDiagram b v n m) where
    show =
        let
            opts = RasterificOptions (mkWidth 250)
        in
            displayImageString . encodePng . renderDia Rasterific opts

