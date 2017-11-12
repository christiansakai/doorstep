module Url 
  ( JobCategory(..)
  , angelJsonUrl
  , angelJobListUrl
  ) where

data JobCategory =
    BreakOutCompanies
  | YCombinator
  | Drones
  | FemaleFounders
  | Remote
  | StanfordFounders
  | StartupInterships
  | Hardware

type Query = String

angelBaseUrl :: String
angelBaseUrl = "https://angel.co/job_lists/"

angelJobCategoryNumber :: JobCategory -> String
angelJobCategoryNumber Remote = "1"
angelJobCategoryNumber StartupInterships = "1"
angelJobCategoryNumber YCombinator = "3"
angelJobCategoryNumber BreakOutCompanies = "4"
angelJobCategoryNumber StanfordFounders = "4"
angelJobCategoryNumber Drones = "6"
angelJobCategoryNumber FemaleFounders = "7"
angelJobCategoryNumber Hardware = "7"

angelJsonUrl :: JobCategory -> String
angelJsonUrl jobCategory = concat 
  [ angelBaseUrl
  , angelJobCategoryNumber jobCategory 
  , filter 
  ]
  where filter = "/filter?filter%5Broles%5D=Software+Engineer"

angelJobListUrl :: JobCategory -> Query -> String
angelJobListUrl jobCategory query = concat 
  [ angelBaseUrl
  , angelJobCategoryNumber jobCategory
  , "/"
  , "browse_startups_table?"
  , query
  ]

