module Request (getJobListJson, getJobListHtml) where

import Types
import Url (angelJsonUrl, angelJobListUrl)
import Decode 
  ( decodeListingJson
  , decodeHtmlJson
  , itemsToQueryParams
  )
import Network.HTTP.Simple 
  ( parseRequest
  , getResponseBody
  , httpLBS
  )
import Data.ByteString.Lazy.Char8 (unpack)
import Control.Monad.IO.Class
import Control.Monad.Catch

getJobListJson :: (MonadIO m, MonadThrow m) 
               => JobCategory -> m (Either Error [Item])
getJobListJson jobCategory = do
  let url = angelJsonUrl jobCategory 

  request <- parseRequest url
  response <- httpLBS request

  let jobJson = getResponseBody response

  return . decodeListingJson $ jobJson

getJobListHtml :: (MonadIO m, MonadThrow m) 
               => JobCategory -> [Item] -> m (Either Error Html)
getJobListHtml jobCategory items = do
  let query = itemsToQueryParams items
      url = angelJobListUrl jobCategory query

  request <- parseRequest url
  response <- httpLBS request

  let jobHtml = getResponseBody response

  return . decodeHtmlJson $ jobHtml

