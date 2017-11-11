{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE QuasiQuotes #-}

module Main where

-- import Url
-- import Decode
-- import Data.Maybe (fromJust)

-- import Network.HTTP.Simple
-- import qualified Data.ByteString.Lazy.Char8 as B
import Text.RawString.QQ
-- import Data.ByteString.Lazy.Char8 (ByteString)
-- import Data.Aeson
-- import qualified Data.HashMap.Strict as HM
-- import qualified Data.Text as T
-- import qualified Data.Map as M

main = do
  undefined
  -- request <-  parseRequest queryUrl
  -- response <- httpLBS request
  -- let body = getResponseBody response
  -- B.putStrLn body


-- kueryUrl = angelJobListUrl (itemsToQueryParams . fromJust . decodeJson $ jsonSample)

-- jobTableRowSelector :: Selector
-- jobTableRowSelector = "div" @ [ hasClass "browse_star


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

sample :: String
sample = [r|
<div data-tab=\ "find\" data-show-connections=\ "false\" data-sticky-headers=\ "false\" data-job-filter=\ "null\" data-user-roles=\ "\" data-user-locations=\ "\" class=\ " djl87 job_listings fbe70 browse_startups_table _a _jm\" data-_tn=\ "job_listings/browse_startups_table\">
    <div data-id=\ "431924\" data-name=\ "Memebox\" data-force-note=\ "0\" data-force-note-on-archive=\ "0\" data-allowed-to-mark-interest=\ "0\" data-listing-ids=\ "[57427]\" data-in-network=\ "false\" data-promoted=\ "false\" data-experiment-variant=\ "control\" class=\ "job-list-item promo djl87 job_listings fbw9 browse_startups_table_row _a _jm\" data-_tn=\ "job_listings/browse_startups_table_row\">
        <div class='browse-table-row-pic js-browse-table-row-pic'>\n
            <a target=\ "_blank\" href=\ "https://angel.co/memebox/jobs\"><img alt=\ " at Memebox\" src=\ "https://d1qb2nb5cznatu.cloudfront.net/startups/i/431924-25526a05b702f3d936b9396c1305ed16-thumb_jpg.jpg?buster=1404779034\" /></a>\n</div>\n
        <div class='header-info'>\n
            <div class='browse-table-row-name js-browse-table-row-name'>\n<a class=\ "startup-link\" href=\ "https://angel.co/memebox/jobs\">Memebox</a>\n</div>\n
            <div class='cb'></div>\n
            <div class='tagline'>Beauty Full Stack E-Commerce</div>\n
            <div class='cb'></div>\n
            <div class='collapsed-job-listings collapsed-jobs-431924'>\n
                <div class='collapsed-listing-row'>\n
                    <div class='collapsed-title'>\nSenior Software Engineer\n</div>\n
                    <div class='collapsed-compensation'>\n$90K &ndash; $150K &middot; 0.0% &ndash; 0.004%\n&middot;\n</div>\n
                    <div class='collapsed-tags'>\nFull Time\n</div>\n</div>\n
                <div class='cb'></div>\n</div>\n
            <div class='tag-row'>\n
                <div class='tag active'>\n<span class='icon fontello-ok'></span>\nActive today\n</div>\n
                <div class='tag applicants'>\n<span class='icon fontello-fire'></span>\n<strong>45</strong>\napplicants last week\n</div>\n
                <div class='tag locations tiptip' title=''>\n<span class='icon fontello-location'></span>\nSan Francisco\n</div>\n
                <div class='tag employees'>\n<span class='icon fontello-group'></span>\n51-200 employees\n</div>\n</div>\n</div>\n
        <div class='cb'></div>\n
        <div class='details details-431924'>\n
            <div class='startup-info-table'>\n
                <div class=\ " djl87 job_listings fbs77 browse_startup_details _a _jm\" data-_tn=\ "job_listings/browse_startup_details\">
                    <div class='header_links'>\n
                        <div class='link'>\n
                            <a target=\ "_blank\" rel=\ "nofollow\" class=\ "twitter-link\" href=\ "\"><img alt=\ "\" src=\ "//assets.angel.co/assets/icons/follow_twitter_gray-f117f5d812ef89718d43ee423b069353c721ee245bb6297a10cb7c1ab48879a2.png\" /></a>\n</div>\n
                        <div class='link'>\n
                            <a target=\ "_blank\" rel=\ "nofollow\" class=\ "blog-link\" href=\ "\"><img alt=\ "\" src=\ "//assets.angel.co/assets/icons/blog_gray-506b0df9d219d60e93638bd2692b52f71f6e53975490eb8a53ff3ec5f7cb78e9.png\" /></a>\n</div>\n
                        <div class='link'>\n<a target=\ "_blank\" class=\ "website-link\" rel=\ " nofollow noopener noreferrer\" href=\ "http://us.memebox.com\">us.memebox.com</a>\n</div>\n</div>\n
                    <div class='js-connection'></div>\n
                    <div class='details-row jobs'>\n
                        <div class='head'>\n
                            <h2>\nJOBS\n</h2>\n</div>\n
                        <div class='content'>\n
                            <div class='listing-row'>\n
                                <div class='top'>\n
                                    <div class='title'>\n<a target=\ "_blank\" href=\ "https://angel.co/memebox/jobs/57427-senior-software-engineer\">Senior Software Engineer</a>\n</div>\n
                                    <div class='compensation'>$90K &ndash; $150K &middot; 0.0% &ndash; 0.004%</div>\n</div>\n
                                <div class='tags'>\nFull Time &middot; San Francisco &middot; Full-Stack Developer &middot; Software Engineer\n</div>\n</div>\n</div>\n</div>\n
                    <div class='details-row product'>\n
                        <div class='head'>\n
                            <h2>Product</h2>\n</div>\n
                        <div class='content'>\n
                            <div class='description'>Memebox is a rapidly growing Y Combinator backed full stack beauty eCommerce born in Seoul, headquartered in San Francisco. \n\nWe are determined to deliver high quality cosmetics, made widely accessible through technology. Memebox is targeting the space between luxury boutique cosmetics and drugstore products: we want everyone to enjoy quality without having to pay exorbitant prices. \n\nWe're a venture-backed eCommerce company at the intersection of beauty and technology. We are looking for driven and dynamic self-starters who are passionate about learning, and able to keep up with the flexibility and changing demands of an early stage startup. \n\nWe welcome applicants from all majors and backgrounds. We also welcome international candidates and process Visas/Green Cards.</div>\n</div>\n</div>\n
                    <div class='details-row why_us'>\n
                        <div class='head'>\n
                            <h2>Why Us</h2>\n</div>\n
                        <div class='content'>\n
                            <p>One of the fastest-growing beauty companies in the world, Memebox delivers innovative, effective and affordable beauty to customers around the world. The goal of Memebox is to refocus beauty around the people and accelerate the personalisation of beauty. </p>\n\n
                            <p>We want to create the world’s most comprehensive and trusted source for buying beauty products.</p>\n\n
                            <p>We want to help user’s understand their own beauty and build their intuition on what is right for them. </p>\n\n
                            <p>We want to enable partners and private labels to better understand consumers and accelerate the personalisation of beauty goods.</p>\n\n
                            <p>Through our online and mobile platforms, we sell our cutting-edge in-house skincare and cosmetics lines. We are dedicated to providing our customers with an amazing experience and high-quality products that define the latest in global beauty trends.</p>\n\n
                            <p>Memebox Corporation was founded in 2012 by Doin Kim and Hyungseok Dino Ha. We are based in San Francisco, CA with offices in Seoul, Shanghai, Hong Kong, Singapore, and Taiwan.</p>\n</div>\n</div>\n
                    <div class='details-row team'>\n
                        <div class='head'>\n
                            <h2>Founders</h2>\n</div>\n
                        <div class='content'>\n
                            <div class='person'>\n
                                <div class='founder-pic'>\n<img alt=\ "\" src=\ "https://d1qb2nb5cznatu.cloudfront.net/users/548630-medium_jpg?1463896150\" />\n</div>\n
                                <div class='info'>\n
                                    <div class='name'>\n<a class=\ "profile-link\" target=\ "_blank\" data-type=\ "User\" data-id=\ "548630\" href=\ "https://angel.co/hyungseok-dino-ha\">Hyungseok Dino Ha</a>\n<span class='title'>\n&middot;\nFounder\n</span>\n</div>\n
                                    <div class='bio'>Co-founder Memebox • Worked at <a href=\ "https://angel.co/ticket-monster\" class=\ "at_mention_link\" target=\ "_blank\" title=\ "Ticket Monster\" data-mention=\ "true\" data-type=\ "Startup\" data-id=\ "58269\" data-slug_id=\ "256433\" data-name=\ "ticket-monster\"><span class=\"at_mention_symbol\">@</span><span class=\"at_mention_slug\">Ticket Monster</span></a> • Studied at <a href=\ "https://angel.co/parsons-school-of-design-1\" class=\ "at_mention_link\" target=\ "_blank\"><span class=\"at_mention_symbol\">@</span><span class=\"at_mention_slug\">Parsons School Of Design</span></a>, <a href=\ "https://angel.co/kyung-hee-university\" class=\ "at_mention_link\" target=\ "_blank\"><span class=\"at_mention_symbol\">@</span><span class=\"at_mention_slug\">Kyung Hee University</span></a></div>\n</div>\n</div>\n</div>\n</div>\n
                    <div class='details-row funding'>\n
                        <div class='head'>\n
                            <h2>Funding</h2>\n</div>\n
                        <div class='content'>\n$60M Series D in 2016\nled by <a href=\ "https://angel.co/goodwater-capital\">Goodwater Capital</a>\n
                            <br>\n$66M Series C in 2016\nled by <a href=\ "https://angel.co/goodwater-capital\">Goodwater Capital</a>\n
                            <br>\n$17.5M Series B in 2015\nled by <a href=\ "https://angel.co/formation-8\">Formation | 8</a>\n
                            <br>\n$11.9M Seed in 2014\n
                            <br>\n$800K Seed in 2014\n
                            <br>\n</div>\n</div>\n
                    <div class='footer-bar'>\n
                        <div class='active'>\nActive\nabout 5 hours\nago\n</div>\n<a rel=\ "facybox nofollow\" href=\ "/job_listings/report_company?company=memebox\">Report this company</a>\n</div>\n</div>\n</div>\n</div>\n
        <div data-slug=\ "memebox\" data-name=\ "Memebox\" data-user=\ "false\" class=\ "c-button c-button--blue djl69 fan13 _a _jm\" data-_tn=\ "job_lists/apply_button\">Apply\n</div>\n</div>\n
    <div data-id=\ "19155\" data-name=\ "Thumbtack\" data-force-note=\ "0\" data-force-note-on-archive=\ "0\" data-allowed-to-mark-interest=\ "0\" data-listing-ids=\ "[454]\" data-in-network=\ "false\" data-promoted=\ "false\" data-experiment-variant=\ "control\" class=\ "job-list-item promo djl87 job_listings fbw9 browse_startups_table_row _a _jm\" data-_tn=\ "job_listings/browse_startups_table_row\">
        <div class='browse-table-row-pic js-browse-table-row-pic'>\n
            <a target=\ "_blank\" href=\ "https://angel.co/thumbtack/jobs\"><img alt=\ " at Thumbtack\" src=\ "https://d1qb2nb5cznatu.cloudfront.net/startups/i/19155-23ca814e9ffa91ace83f87d497d91778-thumb_jpg.jpg?buster=1443507531\" /></a>\n</div>\n
        <div class='header-info'>\n
            <div class='browse-table-row-name js-browse-table-row-name'>\n<a class=\ "startup-link\" href=\ "https://angel.co/thumbtack/jobs\">Thumbtack</a>\n</div>\n
            <div class='cb'></div>\n
            <div class='tagline'>Accomplish your personal projects</div>\n
            <div class='cb'></div>\n
            <div class='collapsed-job-listings collapsed-jobs-19155'>\n
                <div class='collapsed-listing-row'>\n
                    <div class='collapsed-title'>\nSoftware Engineer\n</div>\n
                    <div class='collapsed-compensation'>\n$120K &ndash; $180K &middot; 0.01% &ndash; 0.05%\n&middot;\n</div>\n
                    <div class='collapsed-tags'>\nFull Time\n</div>\n</div>\n
                <div class='cb'></div>\n</div>\n
            <div class='tag-row'>\n
                <div class='tag active'>\n<span class='icon fontello-ok'></span>\nActive this week\n</div>\n
                <div class='tag applicants'>\n<span class='icon fontello-fire'></span>\n<strong>249</strong>\napplicants last week\n</div>\n
                <div class='tag locations tiptip' title=''>\n<span class='icon fontello-location'></span>\nSan Francisco\n</div>\n
                <div class='tag employees'>\n<span class='icon fontello-group'></span>\n51-200 employees\n</div>\n</div>\n</div>\n
        <div class='cb'></div>\n
        <div class='details details-19155'>\n
            <div class='startup-info-table'>\n
                <div class=\ " djl87 job_listings fbs77 browse_startup_details _a _jm\" data-_tn=\ "job_listings/browse_startup_details\">
                    <div class='header_links'>\n
                        <div class='link'>\n
                            <a target=\ "_blank\" rel=\ "nofollow\" class=\ "twitter-link\" href=\ "http://www.twitter.com/thumbtack\"><img alt=\ "\" src=\ "//assets.angel.co/assets/icons/follow_twitter_gray-f117f5d812ef89718d43ee423b069353c721ee245bb6297a10cb7c1ab48879a2.png\" /></a>\n</div>\n
                        <div class='link'>\n
                            <a target=\ "_blank\" rel=\ "nofollow\" class=\ "blog-link\" href=\ "http://blog.thumbtack.com\"><img alt=\ "\" src=\ "//assets.angel.co/assets/icons/blog_gray-506b0df9d219d60e93638bd2692b52f71f6e53975490eb8a53ff3ec5f7cb78e9.png\" /></a>\n</div>\n
                        <div class='link'>\n<a target=\ "_blank\" class=\ "website-link\" rel=\ " nofollow noopener noreferrer\" href=\ "http://www.thumbtack.com/\">thumbtack.com</a>\n</div>\n</div>\n
                    <div class='js-connection'></div>\n
                    <div class='details-row jobs'>\n
                        <div class='head'>\n
                            <h2>\nJOBS\n</h2>\n</div>\n
                        <div class='content'>\n
                            <div class='listing-row'>\n
                                <div class='top'>\n
                                    <div class='title'>\n<a target=\ "_blank\" href=\ "https://angel.co/thumbtack/jobs/454-software-engineer\">Software Engineer</a>\n</div>\n
                                    <div class='compensation'>$120K &ndash; $180K &middot; 0.01% &ndash; 0.05%</div>\n</div>\n
                                <div class='tags'>\nFull Time &middot; San Francisco &middot; Software Engineer\n</div>\n</div>\n</div>\n</div>\n
                    <div class='details-row product'>\n
                        <div class='head'>\n
                            <h2>Product</h2>\n</div>\n
                        <div class='content'>\n
                            <div class='description'>Thumbtack is the destination for getting absolutely anything done—from house painting to event planning, music lessons to long distance moves. Each year, more than 200,000 professionals across the country service 5 million Thumbtack projects in 1,100 unique categories, creating $1 billion in revenue for local business. \n\nFounded in 2009 and headquartered in San Francisco, Thumbtack is backed by Sequoia Capital, Tiger Global Management, Javelin Investment Partners, Baillie Gifford, and Google Capital. \n\nTo get a sneak peek at our San Francisco HQ, check us out on TechCrunch Cribs.\nEngineering Team @ Thumbtack | Engineering Opportunities @ Thumbtack\n</div>\n
                            <div class='screenshots-parent'>\n
                                <div class='screenshots s-vgTop0_5'>\n
                                    <div class='screenshot-link' data-mfp-src='https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/original/000/592/028/592028-9cdc8aebc24e1e5ffe285c957c79528a29405d03.png?1443123965'>\n<img alt=\ "\" src=\ "https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/thumb/000/592/028/592028-d31099886e5578a1a4f3fb778ed16259fa643707.jpg?1443123965\" />\n</div>\n</div>\n</div>\n</div>\n</div>\n
                    <div class='details-row why_us'>\n
                        <div class='head'>\n
                            <h2>Why Us</h2>\n</div>\n
                        <div class='content'>\n
                            <p>Thumbtack empowers people to DO. We empower customers to get more done and small business owners to do the work they love.</p>\n</div>\n</div>\n
                    <div class='details-row team'>\n
                        <div class='head'>\n
                            <h2>Founders</h2>\n</div>\n
                        <div class='content'>\n
                            <div class='person'>\n
                                <div class='founder-pic'>\n<img alt=\ "\" src=\ "https://d1qb2nb5cznatu.cloudfront.net/users/8413-medium_jpg?1443547515\" />\n</div>\n
                                <div class='info'>\n
                                    <div class='name'>\n<a class=\ "profile-link\" target=\ "_blank\" data-type=\ "User\" data-id=\ "8413\" href=\ "https://angel.co/mlz\">Marco Zappacosta</a>\n<span class='title'>\n&middot;\nFounder &amp; CEO\n</span>\n</div>\n
                                    <div class='bio'>Co-founder &amp; CEO of <a href=\ "https://angel.co/thumbtack\" class=\ "at_mention_link\" target=\ "_blank\" title=\ "Thumbtack\" data-mention=\ "true\" data-type=\ "Startup\" data-id=\ "19155\" data-slug_id=\ "77834\" data-name=\ "thumbtack\"><span class=\"at_mention_symbol\">@</span><span class=\"at_mention_slug\">Thumbtack</span></a></div>\n</div>\n</div>\n
                            <div class='person'>\n
                                <div class='founder-pic'>\n<img alt=\ "\" src=\ "https://d1qb2nb5cznatu.cloudfront.net/users/54012-medium_jpg?1500494960\" />\n</div>\n
                                <div class='info'>\n
                                    <div class='name'>\n<a class=\ "profile-link\" target=\ "_blank\" data-type=\ "User\" data-id=\ "54012\" href=\ "https://angel.co/sander-daniels\">Sander Daniels</a>\n<span class='title'>\n&middot;\nFounder\n</span>\n</div>\n
                                    <div class='bio'>Co-founder <a href=\ "https://angel.co/thumbtack\" class=\ "at_mention_link\" target=\ "_blank\" title=\ "Thumbtack\" data-mention=\ "true\" data-type=\ "Startup\" data-id=\ "19155\" data-slug_id=\ "77834\" data-name=\ "thumbtack\"><span class=\"at_mention_symbol\">@</span><span class=\"at_mention_slug\">Thumbtack</span></a> </div>\n</div>\n</div>\n
                            <div class='person'>\n
                                <div class='founder-pic'>\n<img alt=\ "\" src=\ "https://d1qb2nb5cznatu.cloudfront.net/users/54019-medium_jpg?1428477170\" />\n</div>\n
                                <div class='info'>\n
                                    <div class='name'>\n<a class=\ "profile-link\" target=\ "_blank\" data-type=\ "User\" data-id=\ "54019\" href=\ "https://angel.co/jonathan-swanson\">Jonathan Swanson</a>\n<span class='title'>\n&middot;\nFounder &amp; President\n</span>\n</div>\n
                                    <div class='bio'>Co-Founder &amp; President at <a href=\ "https://angel.co/thumbtack\" class=\ "at_mention_link\" target=\ "_blank\" title=\ "Thumbtack\" data-mention=\ "true\" data-type=\ "Startup\" data-id=\ "19155\" data-slug_id=\ "77834\" data-name=\ "thumbtack\"><span class=\"at_mention_symbol\">@</span><span class=\"at_mention_slug\">Thumbtack</span></a></div>\n</div>\n</div>\n</div>\n</div>\n
                    <div class='details-row funding'>\n
                        <div class='head'>\n
                            <h2>Funding</h2>\n</div>\n
                        <div class='content'>\n$125M Last Round in 2015\nled by <a href=\ "https://angel.co/baillie-gifford\">Baillie Gifford</a>\n
                            <br>\n$100M Series D in 2014\nled by <a href=\ "https://angel.co/javelin-venture-partners\">Javelin Venture Partners</a>\n
                            <br>\n$30M Series C in 2014\nled by <a href=\ "https://angel.co/sequoia-capital\">Sequoia Capital</a>\n
                            <br>\n$12.5M Series B in 2013\nled by <a href=\ "https://angel.co/sequoia-capital\">Sequoia Capital</a>\n
                            <br>\n$4.5M Series A in 2012\nled by <a href=\ "https://angel.co/mhs-capital\">MHS Capital</a>\n
                            <br>\n$1.2M Seed in 2010\nled by <a href=\ "https://angel.co/jason\">Jason Calacanis</a>\n
                            <br>\n</div>\n</div>\n
                    <div class='footer-bar'>\n
                        <div class='active'>\nActive\n4 days\nago\n</div>\n<a rel=\ "facybox nofollow\" href=\ "/job_listings/report_company?company=thumbtack\">Report this company</a>\n</div>\n</div>\n</div>\n</div>\n
        <div data-slug=\ "thumbtack\" data-name=\ "Thumbtack\" data-user=\ "false\" class=\ "c-button c-button--blue djl69 fan13 _a _jm\" data-_tn=\ "job_lists/apply_button\">Apply\n</div>\n</div>\n
</div>
|]


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


-- -- HOMEPAGE
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

-- hn = [r|
-- <html op="jobs">

-- <head>
--     <meta name="referrer" content="origin">
--     <meta name="viewport" content="width=device-width, initial-scale=1.0">
--     <link rel="stylesheet" type="text/css" href="news.css?tXh7ovcHtdNNdWb1N2gN">
--     <link rel="shortcut icon" href="favicon.ico">
--     <title>jobs | Hacker News</title>
-- </head>

-- <body>
--     <center>
--         <table id="hnmain" border="0" cellpadding="0" cellspacing="0" width="85%" bgcolor="#f6f6ef">
--             <tr>
--                 <td bgcolor="#ff6600">
--                     <table border="0" cellpadding="0" cellspacing="0" width="100%" style="padding:2px">
--                         <tr>
--                             <td style="width:18px;padding-right:4px">
--                                 <a href="https://news.ycombinator.com"><img src="y18.gif" width="18" height="18" style="border:1px white solid;"></a>
--                             </td>
--                             <td style="line-height:12pt; height:10px;"><span class="pagetop"><b class="hnname"><a href="news">Hacker News</a></b>
--               <a href="newest">new</a> | <a href="newcomments">comments</a> | <a href="show">show</a> | <a href="ask">ask</a> | <span class="topsel"><a href="jobs">jobs</a></span> | <a href="submit">submit</a> </span>
--                             </td>
--                             <td style="text-align:right;padding-right:4px;"><span class="pagetop">
--                               <a href="login?goto=jobs">login</a>
--                           </span></td>
--                         </tr>
--                     </table>
--                 </td>
--             </tr>
--             <tr style="height:10px"></tr>
--             <tr>
--                 <td>
--                     <table border="0" cellpadding="0" cellspacing="0" class="itemlist">
--                         <tr style="height:20px"></tr>
--                         <tr>
--                             <td></td>
--                             <td><img src="s.gif" height="1" width="14"></td>
--                             <td>These are jobs at startups that were funded by Y Combinator. You can also get a job at a YC startup through
--                                 <a href="https://triplebyte.com/?ref=yc_jobs"><u>Triplebyte</u></a>.
--                             </td>
--                         </tr>
--                         <tr style="height:20px"></tr>
--                         <tr class='athing' id='15664032'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="item?id=15664032" class="storylink">Drchrono is looking for Python or Django to help us fix healthcare</a></td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15664032">18 minutes ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15661704'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="https://www.themuse.com/jobs/themuse/product-manager-data-analytics-8fa79a" class="storylink" rel="nofollow">Build data products for 50M people as PM, Data and Analytics, at the Muse</a><span class="sitebit comhead"> (<a href="from?site=themuse.com"><span class="sitestr">themuse.com</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15661704">5 hours ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15660645'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="https://sketchdeck.workable.com/jobs/585897" class="storylink" rel="nofollow">SketchDeck (YC W14) Is Looking for a CTO</a><span class="sitebit comhead"> (<a href="from?site=workable.com"><span class="sitestr">workable.com</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15660645">9 hours ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15659818'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="https://jobs.lever.co/triplebyte/a04222dd-82c9-465a-9d4d-0773f2d6443e" class="storylink" rel="nofollow">Triplebyte (YC S15) Is Hiring Sales Engineers</a><span class="sitebit comhead"> (<a href="from?site=lever.co"><span class="sitestr">lever.co</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15659818">13 hours ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15658736'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="https://www.sendwithus.com/careers/eb44f0d1-053b-4d77-bdef-2bd3c8209e35" class="storylink" rel="nofollow">Sendwithus (YC W14) is hiring developers to build infrastructure using Kubernetes</a><span class="sitebit comhead"> (<a href="from?site=sendwithus.com"><span class="sitestr">sendwithus.com</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15658736">16 hours ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15657155'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="https://jobs.lever.co/smarking/e75f2eb0-c227-47c8-8ceb-9ceb1bb907b7" class="storylink" rel="nofollow">Smarking (YC W15) Is Hiring Sr.PM/Head of Product in SF</a><span class="sitebit comhead"> (<a href="from?site=lever.co"><span class="sitestr">lever.co</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15657155">20 hours ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15654438'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="http://www.strikingly.com/s/careers?utm_source=hn&amp;utm_content=sh" class="storylink" rel="nofollow">Strikingly (YC W13) is hiring in our Shanghai office</a><span class="sitebit comhead"> (<a href="from?site=strikingly.com"><span class="sitestr">strikingly.com</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15654438">1 day ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15651556'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="https://www.tesorio.com/careers/" class="storylink" rel="nofollow">Tesorio is hiring data scientists, product designer to modernize finance teams</a><span class="sitebit comhead"> (<a href="from?site=tesorio.com"><span class="sitestr">tesorio.com</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15651556">1 day ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15650377'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="https://www.workable.com/j/5A3033ABFF" class="storylink" rel="nofollow">Fullstack Academy (YC S12) is hiring devs in New York who love teaching</a><span class="sitebit comhead"> (<a href="from?site=workable.com"><span class="sitestr">workable.com</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15650377">1 day ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15649732'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="https://www.hive.co/l/get-a-job" class="storylink" rel="nofollow">Hive.co (YC S14) Is Hiring in Kitchener/Waterloo</a><span class="sitebit comhead"> (<a href="from?site=hive.co"><span class="sitestr">hive.co</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15649732">1 day ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15648564'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="https://jobs.lever.co/snapdocs/19f28a57-24e4-4b61-815a-ca3166368cf3?lever-origin=applied&amp;lever-source%5B%5D=hacker%20news" class="storylink" rel="nofollow">Snapdocs (YC W14) is hiring a director of product</a><span class="sitebit comhead"> (<a href="from?site=lever.co"><span class="sitestr">lever.co</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15648564">1 day ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15646870'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="https://ablehealth.com/jobs/senior-application-engineer/" class="storylink" rel="nofollow">Able Health is hiring Rails engineers to help doctors improve care</a><span class="sitebit comhead"> (<a href="from?site=ablehealth.com"><span class="sitestr">ablehealth.com</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15646870">1 day ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15644323'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="https://jobs.lever.co/gigster/bde35d51-d8f8-400f-aaf4-99d973527e90" class="storylink" rel="nofollow">Gigster (on-demand developer teams) is hiring sales engineers</a><span class="sitebit comhead"> (<a href="from?site=lever.co"><span class="sitestr">lever.co</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15644323">2 days ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15642188'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="https://www.scaleapi.com/about#jobs" class="storylink" rel="nofollow">Scale API Is Hiring Data Analysts and Engineers</a><span class="sitebit comhead"> (<a href="from?site=scaleapi.com"><span class="sitestr">scaleapi.com</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15642188">2 days ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15641390'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="https://jobs.lever.co/starcity/3d67fce8-37fc-46d9-bdf5-77201bb0ece7" class="storylink" rel="nofollow">Starcity (YC S16) Is Hiring a Software Engineering Generalist</a><span class="sitebit comhead"> (<a href="from?site=lever.co"><span class="sitestr">lever.co</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15641390">2 days ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15640637'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="https://relationshiphero.com/careers?role=relationshipExpert" class="storylink" rel="nofollow">Relationship Hero Is Hiring Relationship Experts (remote OK)</a><span class="sitebit comhead"> (<a href="from?site=relationshiphero.com"><span class="sitestr">relationshiphero.com</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15640637">2 days ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15639755'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="https://jobs.lever.co/bitnami/b218d6ad-c314-4244-b8b1-7ef6449d04f4" class="storylink" rel="nofollow">Bitnami Is Hiring a Technical Marketing Engineer</a><span class="sitebit comhead"> (<a href="from?site=lever.co"><span class="sitestr">lever.co</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15639755">2 days ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15638402'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="https://voodoomfg.com/jobs/robotic-automation-engineer" class="storylink" rel="nofollow">Voodoo Manufacturing (YC W17) Is Hiring a Robotic Automation Engineer in NYC</a><span class="sitebit comhead"> (<a href="from?site=voodoomfg.com"><span class="sitestr">voodoomfg.com</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15638402">2 days ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15636186'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="https://www.easypost.com/jobs" class="storylink" rel="nofollow">EasyPost is Revolutionizing Logisitics – Join Us</a><span class="sitebit comhead"> (<a href="from?site=easypost.com"><span class="sitestr">easypost.com</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15636186">3 days ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15633956'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="https://jobs.lever.co/aptible/6a8e05c1-cd3e-45cf-b70b-5a9ae2e697ae?lever-source=HackerNews" class="storylink" rel="nofollow">Aptible is hiring engineers to build security tools for DevOps teams</a><span class="sitebit comhead"> (<a href="from?site=lever.co"><span class="sitestr">lever.co</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15633956">3 days ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15633350'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="https://mino-games.workable.com/jobs/415887" class="storylink" rel="nofollow">Mino Games Is Hiring Programmers in Montreal</a><span class="sitebit comhead"> (<a href="from?site=workable.com"><span class="sitestr">workable.com</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15633350">3 days ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15632442'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="http://jobs.humi.ca/job-board/product%20development/176" class="storylink" rel="nofollow">Humi (YC W17) is Hiring a Senior Full-Stack Dev in Toronto</a><span class="sitebit comhead"> (<a href="from?site=humi.ca"><span class="sitestr">humi.ca</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15632442">3 days ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15630742'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="https://www.nextravel.com/jobs/senior" class="storylink" rel="nofollow">NexTravel (YC W15) Is Hiring a Senior Engineer (San Francisco)</a><span class="sitebit comhead"> (<a href="from?site=nextravel.com"><span class="sitestr">nextravel.com</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15630742">3 days ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15629141'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="https://voiceops.com/careers.html" class="storylink" rel="nofollow">VoiceOps is hiring engineers and salespeople in SF to build AI for b2b voice data</a><span class="sitebit comhead"> (<a href="from?site=voiceops.com"><span class="sitestr">voiceops.com</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15629141">4 days ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15628545'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="https://www.upcall.com/en/jobs" class="storylink" rel="nofollow">Upcall (YC W17) Is Hiring Developers to Reinvent Call Centers</a><span class="sitebit comhead"> (<a href="from?site=upcall.com"><span class="sitestr">upcall.com</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15628545">4 days ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15628038'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="https://jobs.lever.co/simplehabit" class="storylink" rel="nofollow">Simple Habit Is Hiring Designers and Engineers</a><span class="sitebit comhead"> (<a href="from?site=lever.co"><span class="sitestr">lever.co</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15628038">4 days ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15627351'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="item?id=15627351" class="storylink">SafeButler (YC S17) is hiring employee #2 to modernize insurance</a></td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15627351">4 days ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15624358'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="Https://Flexport.com/careers" class="storylink" rel="nofollow">Flexport is hiring senior engineers</a><span class="sitebit comhead"> (<a href="from?site=flexport.com"><span class="sitestr">flexport.com</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15624358">5 days ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15623922'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="item?id=15623922" class="storylink">HackerRank is hiring a technical support engineer leader</a></td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15623922">5 days ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class='athing' id='15623369'>
--                             <td align="right" valign="top" class="title"><span class="rank"></span></td>
--                             <td></td>
--                             <td class="title"><a href="https://jobs.lever.co/plangrid" class="storylink" rel="nofollow">PlanGrid (YC W12) Is Hiring Front End, Infrastructure, Windows Engineers and More</a><span class="sitebit comhead"> (<a href="from?site=lever.co"><span class="sitestr">lever.co</span></a>)</span>
--                             </td>
--                         </tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="subtext">
--                                 <span class="age"><a href="item?id=15623369">5 days ago</a></span> </td>
--                         </tr>
--                         <tr class="spacer" style="height:5px"></tr>
--                         <tr class="morespace" style="height:10px"></tr>
--                         <tr>
--                             <td colspan="2"></td>
--                             <td class="title"><a href="jobs?next=15622421" class="morelink" rel="nofollow">More</a></td>
--                         </tr>
--                     </table>
--                 </td>
--             </tr>
--             <tr>
--                 <td><img src="s.gif" height="10" width="0">
--                     <table width="100%" cellspacing="0" cellpadding="1">
--                         <tr>
--                             <td bgcolor="#ff6600"></td>
--                         </tr>
--                     </table>
--                     <br>
--                     <center><span class="yclinks"><a href="newsguidelines.html">Guidelines</a>
--         | <a href="newsfaq.html">FAQ</a>
--         | <a href="mailto:hn@ycombinator.com">Support</a>
--         | <a href="https://github.com/HackerNews/API">API</a>
--         | <a href="security.html">Security</a>
--         | <a href="lists">Lists</a>
--         | <a href="bookmarklet.html" rel="nofollow">Bookmarklet</a>
--         | <a href="dmca.html">DMCA</a>
--         | <a href="http://www.ycombinator.com/apply/">Apply to YC</a>
--         | <a href="mailto:hn@ycombinator.com">Contact</a></span>
--                         <br>
--                         <br>
--                         <form method="get" action="//hn.algolia.com/">Search:
--                             <input type="text" name="q" value="" size="17" autocorrect="off" spellcheck="false" autocapitalize="off" autocomplete="false">
--                         </form>
--                     </center>
--                 </td>
--             </tr>
--         </table>
--     </center>
-- </body>
-- <script type='text/javascript' src='hn.js?tXh7ovcHtdNNdWb1N2gN'></script>

-- </html>
-- |]
-- -- -- data A = A
