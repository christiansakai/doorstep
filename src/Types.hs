module Types where

import Data.ByteString.Lazy.Internal (ByteString)

data JobCategory =
    BreakOutCompanies
  | YCombinator
  | Drones
  | FemaleFounders
  | Remote
  | StanfordFounders
  | StartupInterships
  | Hardware

type Url    = String
type Query  = String

type Item = (Startup, [Listing])

type Startup  = Integer
type Listing  = Integer

type Json = ByteString

type Html = String

type Error = String
