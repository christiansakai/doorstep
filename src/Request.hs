module Request (getJobJson, getJobHtml) where

import Types
import Url (angelJsonUrl, angelJobListUrl)
import Decode (decodeListingJson, itemsToQueryParams)
import Network.HTTP.Simple 
  ( parseRequest
  , getResponseBody
  , httpLBS
  )

-- |
-- Note to self. Since this function will have type
-- getJobJson :: (MonadIO m, MonadThrow m) 
--            => JobCategory -> m (Maybe [Item])
-- and I don't want to add `exceptions` package that
-- responsibles for `Monadthrow` to the cabal file
-- I just use IO type here.
getJobJson :: JobCategory -> IO (Either Error [Item])
getJobJson jobCategory = do
  let url = angelJsonUrl jobCategory 

  request <- parseRequest url
  response <- httpLBS request

  let jobJson = getResponseBody response

  return $ decodeListingJson jobJson

-- getJobList :: JobCategory -> 
getJobHtml jobCategory items = do
  let query = itemsToQueryParams items
      url = angelJobListUrl jobCategory query

  request <- parseRequest url
  response <- httpLBS request

  let jobHtml = getResponseBody response

  return jobHtml



