module Request 
  ( getListings
  , getCompanyListHtml
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

getListings :: (MonadIO m, MonadThrow m) 
            => CompanyCategory 
            -> m (Either String [Listing])
getListings companyCategory = do
  let url = angelListingUrl companyCategory 

  listings <- get url
  return . decodeListingsJson $ listings

getCompanyListHtml :: (MonadIO m, MonadThrow m) 
                   => CompanyCategory -> [Listing] 
                   -> m (Either Error CompanyListHtml)
getCompanyListHtml jobCategory listings = do
  let queryParams = listingsToQueryParams listings
      url = angelCompanyListHtmlUrl jobCategory queryParams

  companyListHtml <- getHtml url
  return companyListHtml

getCompanyHtml :: (MonadIO m, MonadThrow m)
               => FullUrl -> m (Either Error CompanyHtml)
getCompanyHtml = getHtml

getJobHtml :: (MonadIO m, MonadThrow m)
           => FullUrl -> m (Either Error JobHtml)
getJobHtml = getHtml

getHtml :: (MonadIO m, MonadThrow m)
           => FullUrl -> m (Either Error Html)
getHtml url = do 
  html <- get url
  return . decodeHtmlJson $ html

get :: (MonadIO m, MonadThrow m) => FullUrl -> m ByteString
get url = do
  request <- parseRequest url
  response <- httpLBS request
  return . getResponseBody $ response
