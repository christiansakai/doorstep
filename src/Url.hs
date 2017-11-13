module Url 
  ( angelListingUrl
  , angelCompanyListHtmlUrl
  , listingsToQueryParams
  ) where

import Types

import Data.List (intercalate)
import Data.Foldable (foldr)

angelBaseUrl :: BaseUrl
angelBaseUrl = "https://angel.co/job_lists/"

angelJobCategoryNumber :: CompanyCategory -> String
angelJobCategoryNumber Remote = "1"
angelJobCategoryNumber StartupInterships = "1"
angelJobCategoryNumber YCombinator = "3"
angelJobCategoryNumber BreakOutCompanies = "4"
angelJobCategoryNumber StanfordFounders = "4"
angelJobCategoryNumber Drones = "6"
angelJobCategoryNumber FemaleFounders = "7"
angelJobCategoryNumber Hardware = "7"

angelListingUrl :: CompanyCategory -> FullUrl
angelListingUrl companyCategory = concat 
  [ angelBaseUrl
  , angelJobCategoryNumber companyCategory 
  , filter 
  ]
  where filter = "/filter?filter%5Broles%5D=Software+Engineer"

angelCompanyListHtmlUrl :: CompanyCategory 
                        -> QueryParams 
                        -> FullUrl
angelCompanyListHtmlUrl companyCategory queryParams = concat 
  [ angelBaseUrl
  , angelJobCategoryNumber companyCategory
  , "/"
  , "browse_startups_table?"
  , queryParams
  ]

listingsToQueryParams :: [Listing] -> QueryParams
listingsToQueryParams listings = 
  let indexes = [i | i <- [0..]]
      listingsIndexed = zip indexes listings
      mapped = fmap mapper listingsIndexed
      mapper (index, listing) = listingToQueryParams index listing
   in intercalate "&" mapped

listingToQueryParams :: Integer -> Listing -> QueryParams
listingToQueryParams position listing = 
  let startupId = fst listing
      listingIds = snd listing
    in concat [ startupIdToQueryParam startupId
              , "&"
              , listingIdsToQueryParam position listingIds
              ]

startupIdToQueryParam :: StartupId -> QueryParams
startupIdToQueryParam startupId = 
  concat ["startups%5B%5D=", show startupId]

listingIdsToQueryParam :: Integer -> [ListingId] -> QueryParams
listingIdsToQueryParam position listingIds = foldr f "" listingIds
  where f listingId acc = concat 
          [ "listings%5B" 
          , show position
          , "%5D%5B%5D="
          , show listingId
          ]

{-|
  Sample Data
-}
listingSample :: Listing
listingSample = (123, [456, 789])

startupIdSample :: StartupId
startupIdSample = 123

listingIdsSample :: [ListingId]
listingIdsSample = [456, 789]

