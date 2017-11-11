module Url where

import qualified Data.Map as M

data JobCategory =
    BreakOutCompanies
  | YCombinator
  | Drones
  | FemaleFounders
  | Remote
  | StanfordFounders
  | StartupInterships
  | Hardware

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

angelDataUrl :: String
angelDataUrl = concat [ angelBaseUrl, "6", filter ]
  where filter = "/filter?filter%5Broles%5D=Software+Engineer"

type Query = String

angelJobListUrl :: Query -> String
angelJobListUrl query = concat 
  [ angelBaseUrl
  , "6"
  , "/"
  , "browse_startups_table?"
  , query
  ]

