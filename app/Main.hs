{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE QuasiQuotes #-}

module Main where

import Types
import Request

main = do
  eitherItems <- getJobListJson Drones
  case eitherItems of
    Right items -> do
      eitherJobListHtml <- getJobListHtml Drones items

      case eitherJobListHtml of 
        Right jobListHtml -> putStrLn jobListHtml

        Left err -> putStrLn err

    Left err -> 
      putStrLn err




-- run :: Maybe [String]
-- run = scrapeStringLike hn scraper

-- scraper :: Scraper String [String]
-- scraper = chroot itemListSelector linkAndContent

-- itemListSelector :: Selector
-- itemListSelector = "table" @: [hasClass "itemlist"]

-- linkAndContent :: Scraper String [String]
-- linkAndContent = do
--   link <- getLink
--   content <- getContent
--   return [ concat [hnBaseLink ++ "/" ++ link] 
--          , content
--          ]

-- hnBaseLink :: String
-- hnBaseLink = "https://news.ycombinator.com/jobs"

-- getLink :: Scraper String String
-- getLink = attr "href" linkSelector

-- getContent :: Scraper String String
-- getContent = text linkSelector

-- linkSelector :: Selector
-- linkSelector = td // link
--   where 
--     td = "td" @:
--       [ hasClass "title"
--       , notP ("align" @= "right")
--       , notP ("valign" @= "top")
--       ]

--     link = "a" @: [hasClass "storylink"]

-- type Author = String

-- data Comment
--     = TextComment Author String
--     | ImageComment Author URL
--     deriving (Show, Eq)

-- allComments :: Maybe [Comment]
-- allComments = scrapeStringLike example2 comments
--    where
--        comments :: Scraper String [Comment]
--        comments = chroots ("div" @: [hasClass "container"]) comment

--        comment :: Scraper String Comment
--        comment = textComment <|> imageComment

--        textComment :: Scraper String Comment
--        textComment = do
--            author      <- text $ "span" @: [hasClass "author"]
--            commentText <- text $ "div"  @: [hasClass "text"]
--            return $ TextComment author commentText

--        imageComment :: Scraper String Comment
--        imageComment = do
--            author   <- text       $ "span" @: [hasClass "author"]
--            imageURL <- attr "src" $ "img"  @: [hasClass "image"]
--            return $ ImageComment author imageURL
