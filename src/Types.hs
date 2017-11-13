module Types where

import Data.ByteString.Lazy.Internal (ByteString)

data CompanyCategory =
    BreakOutCompanies
  | YCombinator
  | Drones
  | FemaleFounders
  | Remote
  | StanfordFounders
  | StartupInterships
  | Hardware

type FullUrl     = String
type BaseUrl     = String
type QueryParams = String

type Listing    = (StartupId, [ListingId])
type StartupId  = Integer
type ListingId  = Integer

type Json = ByteString

type Html             = String
type CompanyListHtml  = String
type CompanyHtml      = String
type JobHtml          = String
type Href             = String

type Error = String 
