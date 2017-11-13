{-# LANGUAGE FlexibleContexts #-}

module Request 
  ( getListings
  , getCompanyListHtml
  , getCompanyHtml
  , getJobHtml
  ) where

import Types
import Url 
  ( angelListingUrl
  , angelCompanyListHtmlUrl
  , listingsToQueryParams
  )
import Decode (decodeListingsJson, decodeHtmlJson)
import Network.HTTP.Simple 
  ( Response
  , parseRequest
  , getResponseBody
  , httpLBS
  )
import Data.ByteString.Lazy.Char8 (unpack)
import Data.ByteString.Lazy.Internal (ByteString)
import Control.Monad.IO.Class
import Control.Monad.Catch
import Control.Monad.Except

getListings :: (MonadIO m, MonadThrow m, MonadError Error m) 
            => CompanyCategory 
            -> m [Listing]
getListings companyCategory = do
  let url = angelListingUrl companyCategory 

  listingsJson <- get url
  case decodeListingsJson listingsJson of
    Right listings -> return listings
    Left err       -> throwError err

getCompanyListHtml :: (MonadIO m, MonadThrow m, MonadError Error m) 
                   => CompanyCategory -> [Listing] 
                   -> m CompanyListHtml
getCompanyListHtml jobCategory listings = do
  let queryParams = listingsToQueryParams listings
      url = angelCompanyListHtmlUrl jobCategory queryParams

  htmlJson <- get url
  case decodeHtmlJson htmlJson of
    Right html -> return html
    Left err   -> throwError err

getCompanyHtml :: (MonadIO m, MonadThrow m)
               => FullUrl -> m CompanyHtml
getCompanyHtml = getHtml

getJobHtml :: (MonadIO m, MonadThrow m)
           => FullUrl -> m JobHtml
getJobHtml = getHtml

getHtml :: (MonadIO m, MonadThrow m)
           => FullUrl -> m Html
getHtml url = do 
  html <- get url
  return . unpack $ html

get :: (MonadIO m, MonadThrow m) => FullUrl -> m ByteString
get url = do
  request <- parseRequest url
  response <- httpLBS request
  return . getResponseBody $ response
