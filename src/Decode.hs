{-# LANGUAGE OverloadedStrings #-}

module Decode (decodeJson, itemsToQueryParams) where

import Prelude hiding (lookup)
import Data.ByteString.Lazy.Char8 (ByteString)
import Data.Map (Map, lookup)
import Data.Foldable (foldr)
import Data.Aeson (decode)
import Data.Maybe (fromJust)
import Data.List (intercalate)

type Startup = Integer
type Listing = Integer
type Item = (Startup, [Listing])
type Json = ByteString

decodeJson :: Json -> Maybe [Item]
decodeJson json =
  let maybeMap :: Maybe (Map String [Item])
      maybeMap = decode json
   in case maybeMap of
        Just map -> lookup "listings" map
        _        -> Nothing

jsonSample :: ByteString
jsonSample = "{\"listings\":[[431924,[57427]],[19155,[454,48674,28619,20787,20789,20788]],[131716,[19033,16723,7865]],[85839,[51777,32240]],[333629,[27524,27528,51987,51989,51988,51990]],[178430,[63550,63548,63554,63562,63547,63557]],[74139,[2057,8479]],[57136,[7717,7719]],[137296,[36932,46174,36931,60355]],[109557,[10811]],[1085,[44733]],[326222,[67627]],[162081,[69657,69655,69658,69656]],[19163,[8993,57827,57825]],[112872,[46854]],[12387,[44947,44950,44969]],[47414,[64141]],[37305,[26865]],[155311,[19940]],[308722,[21130,21127,21129,21128]],[21199,[51026,59094]]]}"

listingsSample :: [Listing]
listingsSample = [456, 789]

listingsToQueryParam :: Integer -> [Listing] -> String
listingsToQueryParam position listings = foldr f "" listings
  where f listing acc = concat 
          [ "listings%5B" 
          , show position
          , "%5D%5B%5D="
          , show listing
          ]

startupSample :: Startup
startupSample = 123

startupToQueryParam :: Startup -> String
startupToQueryParam startup = concat ["startups%5B%5D=", show startup]

itemSample :: Item
itemSample = (123, [456, 789])

itemToQueryParams :: Integer -> Item -> String
itemToQueryParams position item = 
  let startup = fst item
      listings = snd item
    in concat [ startupToQueryParam startup
              , "&"
              , listingsToQueryParam position listings
              ]

itemsToQueryParams :: [Item] -> String
itemsToQueryParams items = 
  let indexes = [i | i <- [0..]]
      itemsIndexed = zip indexes items
      mapped = fmap mapper itemsIndexed
      mapper (index, item) = itemToQueryParams index item
   in intercalate "&" mapped
