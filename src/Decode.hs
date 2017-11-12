{-# LANGUAGE OverloadedStrings #-}

module Decode 
  ( decodeListingJson
  , decodeHtmlJson
  , itemsToQueryParams
  ) where

import Types

import Prelude hiding (lookup)
import Data.Map (Map, lookup)
import Data.Foldable (foldr)
import Data.Aeson (decode)
import Data.Maybe (fromJust)
import Data.List (intercalate)

decodeListingJson :: Json -> Either Error [Item]
decodeListingJson json =
  let maybeMap :: Maybe (Map String [Item])
      maybeMap = decode json
   in case maybeMap of
        Just map -> 
          case lookup "listings" map of
            Just items -> Right items
            _          -> Left "failed to decode listing JSON"

        _        -> Left "failed to decode listing JSON"

decodeHtmlJson :: Json -> Either Error Html
decodeHtmlJson json =
  let maybeMap :: Maybe (Map String Html)
      maybeMap = decode json
   in case maybeMap of
        Just map -> 
          case lookup "html" map of
            Just html -> Right html
            _         -> Left "failed to decode html JSON"

        _        -> Left "failed to decode html JSON"

itemsToQueryParams :: [Item] -> Query
itemsToQueryParams items = 
  let indexes = [i | i <- [0..]]
      itemsIndexed = zip indexes items
      mapped = fmap mapper itemsIndexed
      mapper (index, item) = itemToQueryParams index item
   in intercalate "&" mapped

itemToQueryParams :: Integer -> Item -> Query
itemToQueryParams position item = 
  let startup = fst item
      listings = snd item
    in concat [ startupToQueryParam startup
              , "&"
              , listingsToQueryParam position listings
              ]

startupToQueryParam :: Startup -> Query
startupToQueryParam startup = concat ["startups%5B%5D=", show startup]

listingsToQueryParam :: Integer -> [Listing] -> Query
listingsToQueryParam position listings = foldr f "" listings
  where f listing acc = concat 
          [ "listings%5B" 
          , show position
          , "%5D%5B%5D="
          , show listing
          ]

{-|
  Sample Data
-}

listingJsonSample :: Json
listingJsonSample = "{\"listings\":[[431924,[57427]],[19155,[454,48674,28619,20787,20789,20788]],[131716,[19033,16723,7865]],[85839,[51777,32240]],[333629,[27524,27528,51987,51989,51988,51990]],[178430,[63550,63548,63554,63562,63547,63557]],[74139,[2057,8479]],[57136,[7717,7719]],[137296,[36932,46174,36931,60355]],[109557,[10811]],[1085,[44733]],[326222,[67627]],[162081,[69657,69655,69658,69656]],[19163,[8993,57827,57825]],[112872,[46854]],[12387,[44947,44950,44969]],[47414,[64141]],[37305,[26865]],[155311,[19940]],[308722,[21130,21127,21129,21128]],[21199,[51026,59094]]]}"

itemSample :: Item
itemSample = (123, [456, 789])

startupSample :: Startup
startupSample = 123

listingsSample :: [Listing]
listingsSample = [456, 789]

htmlJsonSample :: Json
htmlJsonSample = "{\"html\": \"<div>Hello</div>\"}"

