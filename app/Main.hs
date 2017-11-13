{-# LANGUAGE FlexibleContexts #-}

module Main where

import Types
import Request
import Scrape

import Control.Monad.IO.Class
import Control.Monad.Catch
import Control.Monad.Except
import Data.Foldable (foldr)

main :: IO ()
main = do
  eitherHrefs <- runExceptT makeToExceptT 
  case eitherHrefs of
    Right hrefs -> putStrLn . concat $ hrefs
    Left err    -> putStrLn err

-- Note to self. 
-- Since we need to make this function into main.
-- We have to make the base into IO since main is always IO monad.
makeToExceptT :: ExceptT Error IO [Href]
makeToExceptT = do
  links <- collectCompanyCategoriesLinks companyCategories
  return links

collectCompanyCategoriesLinks :: ( MonadIO m
                                 , MonadThrow m
                                 , MonadError Error m
                                 ) 
                              => [CompanyCategory] -> m [Href]
collectCompanyCategoriesLinks companyCategories =
  let nestedCompanyLinks = sequence $ fmap collectCompanyCategoryLinks companyCategories
   in fmap concat nestedCompanyLinks

collectCompanyCategoryLinks :: (MonadIO m, MonadThrow m, MonadError Error m)
                             => CompanyCategory -> m [Href]
collectCompanyCategoryLinks companyCategory = do
  listings <- getListings companyCategory
  companyListHtml <- getCompanyListHtml companyCategory listings

  case scrapeCompanyHrefs companyListHtml of
    Right hrefs -> return hrefs
    Left err    -> throwError err

companyCategories :: [CompanyCategory]
companyCategories = 
  [ BreakOutCompanies
  , YCombinator
  , Drones
  , FemaleFounders
  , StanfordFounders
  , StartupInterships
  , Hardware
  ]
