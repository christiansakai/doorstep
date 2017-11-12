{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE OverloadedStrings #-}

module Scrape where

import Types

import Text.RawString.QQ
import Text.HTML.Scalpel
  ( Selector
  , Scraper
  , TagName
  , hasClass
  , (@:)
  , (//)
  , attrs
  , scrapeStringLike
  )

scrapeCompanyLinks :: Html -> Maybe [String]
scrapeCompanyLinks html = 
  scrapeStringLike html companyLinksScraper

companyLinksScraper :: Scraper String [String]
companyLinksScraper = attrs "href" companyLinkSelector

companyLinkSelector :: Selector
companyLinkSelector = div // "a"
  where 
    div = "div" @: [ hasClass "browse-table-row-pic"
                   , hasClass "js-browse-table-row-pic"
                   ]

companyListHtmlSample :: Html
companyListHtmlSample = [r|
<div data-tab="find" data-show-connections="false" data-sticky-headers="false" data-job-filter="null" data-user-roles="" data-user-locations="" class=" djl87 job_listings fbe70 browse_startups_table _a _jm" data-_tn="job_listings/browse_startups_table">
    <div data-id="350317" data-name="Skycart" data-force-note="0" data-force-note-on-archive="0" data-allowed-to-mark-interest="0" data-listing-ids="[46574]" data-in-network="false" data-promoted="false" data-experiment-variant="control" class="job-list-item promo djl87 job_listings fbw9 browse_startups_table_row _a _jm" data-_tn="job_listings/browse_startups_table_row">
        <div class='browse-table-row-pic js-browse-table-row-pic'>
            <a target="_blank" href="https://angel.co/skycart/jobs"><img alt=" at Skycart" src="https://d1qb2nb5cznatu.cloudfront.net/startups/i/350317-cb9dd7bc7c528a5cab9c787b14f5650d-thumb_jpg.jpg?buster=1470646217" /></a>
        </div>
        <div class='header-info'>
            <div class='browse-table-row-name js-browse-table-row-name'>
                <a class="startup-link" href="https://angel.co/skycart/jobs">Skycart</a>
            </div>
            <div class='cb'></div>
            <div class='tagline'>Drone shipping solutions</div>
            <div class='cb'></div>
            <div class='collapsed-job-listings collapsed-jobs-350317'>
                <div class='collapsed-listing-row'>
                    <div class='collapsed-title'>
                        Senior Roboticist for Drone Delivery company
                    </div>
                    <div class='collapsed-compensation'>
                        $50K &ndash; $70K &middot; 0.1% &ndash; 1.0% &middot;
                    </div>
                    <div class='collapsed-tags'>
                        Full Time
                    </div>
                </div>
                <div class='cb'></div>
            </div>
            <div class='tag-row'>
                <div class='tag active'>
                    <span class='icon fontello-ok'></span> Active this week
                </div>
                <div class='tag applicants'>
                    <span class='icon fontello-fire'></span>
                    <strong>18</strong> applicants last week
                </div>
                <div class='tag locations tiptip' title='San Francisco Bay Area, Newark, San Jose'>
                    <span class='icon fontello-location'></span> San Francisco Bay Area, Newark, San Jose
                </div>
                <div class='tag employees'>
                    <span class='icon fontello-group'></span> 1-10 employees
                </div>
            </div>
        </div>
        <div class='cb'></div>
        <div class='details details-350317'>
            <div class='startup-info-table'>
                <div class=" djl87 job_listings fbs77 browse_startup_details _a _jm" data-_tn="job_listings/browse_startup_details">
                    <div class='header_links'>
                        <div class='link'>
                            <a target="_blank" rel="nofollow" class="twitter-link" href="http://twitter.com/skycartdrones"><img alt="" src="//assets.angel.co/assets/icons/follow_twitter_gray-f117f5d812ef89718d43ee423b069353c721ee245bb6297a10cb7c1ab48879a2.png" /></a>
                        </div>
                        <div class='link'>
                            <a target="_blank" rel="nofollow" class="blog-link" href=""><img alt="" src="//assets.angel.co/assets/icons/blog_gray-506b0df9d219d60e93638bd2692b52f71f6e53975490eb8a53ff3ec5f7cb78e9.png" /></a>
                        </div>
                        <div class='link'>
                            <a target="_blank" class="website-link" rel=" nofollow noopener noreferrer" href="http://www.skycart.net">skycart.net</a>
                        </div>
                    </div>
                    <div class='js-connection'></div>
                    <div class='details-row jobs'>
                        <div class='head'>
                            <h2>
JOBS
</h2>
                        </div>
                        <div class='content'>
                            <div class='listing-row'>
                                <div class='top'>
                                    <div class='title'>
                                        <a target="_blank" href="https://angel.co/skycart/jobs/46574-senior-roboticist-for-drone-delivery-company">Senior Roboticist for Drone Delivery company</a>
                                    </div>
                                    <div class='compensation'>$50K &ndash; $70K &middot; 0.1% &ndash; 1.0%</div>
                                </div>
                                <div class='tags'>
                                    Full Time &middot; San Francisco Bay Area &middot; Software Engineer
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='details-row product'>
                        <div class='head'>
                            <h2>Product</h2>
                        </div>
                        <div class='content'>
                            <div class='description'>Skycart is a drone shipping service for retailers that delivers purchases to customer's front door. In 30 minutes or less.  Skycart is the cutting-edge means of shipping and receiving nearly anything under 6.5 pounds anywhere within city limits and always within 30 minutes. The package is delivered to your front door or your recipient’s. Both pickups and deliveries are ordered via a smartphone app. The same app tells you exactly when your package will arrive or be delivered. Skycart is the fastest, least expensive, and most assured service in the courier industry, period.  Our solution helps retailers to offer a better delivery service for their customers. While traditional delivery services aim same-day delivery, we go for one-hour delivery. That's exactly what retailers need. Skycart is disruptive solution for fast shippings at low costs.  Our service is provided by a network of autonomously flying drones. Flying almost everywhere. Available 24/7. Simple.</div>
                            <div class='screenshots-parent'>
                                <div class='screenshots s-vgTop0_5'>
                                    <div class='screenshot-link' data-mfp-src='https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/original/000/291/181/291181-4f581c3ad09457e01b6fe243cda0878e8b4ac0e1.png?1395301478'>
                                        <img alt="" src="https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/thumb/000/291/181/291181-15c22b9c43b33ef8e2473b3efbae6cb27f5692cb.jpg?1395301478" />
                                    </div>
                                    <div class='screenshot-link' data-mfp-src='https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/original/000/291/182/291182-2b0c3db48951505fd00134847ba656bb9723575e.png?1395301484'>
                                        <img alt="" src="https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/thumb/000/291/182/291182-55f1a3d9c645ddddb9953126ce8b5c70ea39ac0d.jpg?1395301484" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='details-row why_us'>
                        <div class='head'>
                            <h2>Why Us</h2>
                        </div>
                        <div class='content'>
                            <p>We are going places....and fast! If you've been looking for a fast paced start up to join in the South Bay area of SF, loves drones, have the technical chops we need, have the ability to work in the US without any sort of authorization...reach out to me direct with your resume, cover letter that details the skills relevant to the role, etc....and maybe you will be the next member of our team!</p>
                        </div>
                    </div>
                    <div class='details-row team'>
                        <div class='head'>
                            <h2>Founders</h2>
                        </div>
                        <div class='content'>
                            <div class='person'>
                                <div class='founder-pic'>
                                    <img alt="" src="https://d1qb2nb5cznatu.cloudfront.net/users/12275-medium_jpg?1423740387" />
                                </div>
                                <div class='info'>
                                    <div class='name'>
                                        <a class="profile-link" target="_blank" data-type="User" data-id="12275" href="https://angel.co/lukaswrede">Lukas Wrede</a>
                                        <span class='title'>
&middot;
Founder &amp; CEO
</span>
                                    </div>
                                    <div class='bio'>CEO of Skycart. Strong background in aviation &amp; entrepreneurship as co-founder at studdex, alendra, rocketapps &amp; airmatch. IUBH BA 2007 in Aviation Management.</div>
                                </div>
                            </div>
                            <div class='person'>
                                <div class='founder-pic'>
                                    <img alt="" src="https://d1qb2nb5cznatu.cloudfront.net/users/861637-medium_jpg?1417222496" />
                                </div>
                                <div class='info'>
                                    <div class='name'>
                                        <a class="profile-link" target="_blank" data-type="User" data-id="861637" href="https://angel.co/inewton888">Simon Yuen</a>
                                        <span class='title'>
&middot;
Founder
</span>
                                    </div>
                                    <div class='bio'>Embedded software engineer with a deep knowledge of robotics and over 15 years of experience in UAS/UAV development, embedded software, and AI.</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='details-row tech'>
                        <div class='head'>
                            <h2>Tech</h2>
                        </div>
                        <div class='content'>
                            <p>We expect to establish a self-sufficient drone network that can operate anywhere in any major city in the U.S. While the technology we use is cutting-edge and highly complex, operation costs are incredibly cheap which means we can create a vast, interconnected network.</p>

                            <p>To hear more about the technologies we use, the logistical scheme we've implemented and just how we can save you money with our cost-cutting, delivery-time-decreasing business plan, please feel free to inquire.</p>
                        </div>
                    </div>
                    <div class='footer-bar'>
                        <div class='active'>
                            Active 5 days ago
                        </div>
                        <a rel="facybox nofollow" href="/job_listings/report_company?company=skycart">Report this company</a>
                    </div>
                </div>
            </div>
        </div>
        <div data-slug="skycart" data-name="Skycart" data-user="false" class="c-button c-button--blue djl69 fan13 _a _jm" data-_tn="job_lists/apply_button">Apply
        </div>
    </div>
    <div data-id="507975" data-name="Skydio" data-force-note="1" data-force-note-on-archive="0" data-allowed-to-mark-interest="0" data-listing-ids="[50966]" data-in-network="false" data-promoted="false" data-experiment-variant="control" class="job-list-item promo djl87 job_listings fbw9 browse_startups_table_row _a _jm" data-_tn="job_listings/browse_startups_table_row">
        <div class='browse-table-row-pic js-browse-table-row-pic'>
            <a target="_blank" href="https://angel.co/skydio/jobs"><img alt=" at Skydio" src="https://d1qb2nb5cznatu.cloudfront.net/startups/i/507975-aac9786d6c4cba99be634b7bc1969cf3-thumb_jpg.jpg?buster=1496284174" /></a>
        </div>
        <div class='header-info'>
            <div class='browse-table-row-name js-browse-table-row-name'>
                <a class="startup-link" href="https://angel.co/skydio/jobs">Skydio</a>
            </div>
            <div class='cb'></div>
            <div class='tagline'>Autonomous flying camera drones</div>
            <div class='cb'></div>
            <div class='collapsed-job-listings collapsed-jobs-507975'>
                <div class='collapsed-listing-row'>
                    <div class='collapsed-title'>
                        Software Engineer - Embedded
                    </div>
                    <div class='collapsed-compensation'>
                        $90K &ndash; $140K &middot; 0.05% &ndash; 0.15% &middot;
                    </div>
                    <div class='collapsed-tags'>
                        Full Time
                    </div>
                </div>
                <div class='cb'></div>
            </div>
            <div class='tag-row'>
                <div class='tag active'>
                    <span class='icon fontello-ok'></span> Active last week
                </div>
                <div class='tag applicants'>
                    <span class='icon fontello-fire'></span>
                    <strong>24</strong> applicants last week
                </div>
                <div class='tag locations tiptip' title=''>
                    <span class='icon fontello-location'></span> Redwood City
                </div>
                <div class='tag employees'>
                    <span class='icon fontello-group'></span> 11-50 employees
                </div>
            </div>
        </div>
        <div class='cb'></div>
        <div class='details details-507975'>
            <div class='startup-info-table'>
                <div class=" djl87 job_listings fbs77 browse_startup_details _a _jm" data-_tn="job_listings/browse_startup_details">
                    <div class='header_links'>
                        <div class='link'>
                            <a target="_blank" rel="nofollow" class="twitter-link" href="http://twitter.com/skydioHQ"><img alt="" src="//assets.angel.co/assets/icons/follow_twitter_gray-f117f5d812ef89718d43ee423b069353c721ee245bb6297a10cb7c1ab48879a2.png" /></a>
                        </div>
                        <div class='link'>
                            <a target="_blank" rel="nofollow" class="blog-link" href=""><img alt="" src="//assets.angel.co/assets/icons/blog_gray-506b0df9d219d60e93638bd2692b52f71f6e53975490eb8a53ff3ec5f7cb78e9.png" /></a>
                        </div>
                        <div class='link'>
                            <a target="_blank" class="website-link" rel=" nofollow noopener noreferrer" href="http://www.skydio.com">skydio.com</a>
                        </div>
                    </div>
                    <div class='js-connection'></div>
                    <div class='details-row jobs'>
                        <div class='head'>
                            <h2>
JOBS
</h2>
                        </div>
                        <div class='content'>
                            <div class='listing-row'>
                                <div class='top'>
                                    <div class='title'>
                                        <a target="_blank" href="https://angel.co/skydio/jobs/50966-software-engineer-embedded">Software Engineer - Embedded</a>
                                    </div>
                                    <div class='compensation'>$90K &ndash; $140K &middot; 0.05% &ndash; 0.15%</div>
                                </div>
                                <div class='tags'>
                                    Full Time &middot; Redwood City &middot; Software Engineer &middot; Python &middot; C++ &middot; Computer Vision &middot; Embedded Systems &middot; Linux &middot; Embedded Software &middot; Deep Learning
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='details-row product'>
                        <div class='head'>
                            <h2>Product</h2>
                        </div>
                        <div class='content'>
                            <div class='description'>Our fundamental goal is to deliver the power and magic of flying cameras without the complexity. Current drones are cool gadgets for enthusiasts but still a curiosity to mainstream consumers. Our belief is that advanced onboard computer vision and artificial intelligence, combined with world class hardware product design, will yield a breakthrough that makes drones a trusted part of our daily lives. A big part of what excites us not just what we’re building today, but the possibilities ahead. Onboard intelligence is an architecture not a feature. This intelligence is rooted in a fundamental connection between algorithms, compute hardware, and sensors, which fuels our dedication to building world-class software and hardware teams. If these are problems you'd like to help solve, we'd love to hear from you.

                            </div>
                        </div>
                    </div>
                    <div class='details-row why_us'>
                        <div class='head'>
                            <h2>Why Us</h2>
                        </div>
                        <div class='content'>
                            <p>We are working on important technology in a rapidly growing market: navigation for drones. Join us and help define the interface for the greatest tool of our generation.</p>
                        </div>
                    </div>
                    <div class='details-row team'>
                        <div class='head'>
                            <h2>Founders</h2>
                        </div>
                        <div class='content'>
                            <div class='person'>
                                <div class='founder-pic'>
                                    <img alt="" src="https://d1qb2nb5cznatu.cloudfront.net/users/708410-medium_jpg?1407896868" />
                                </div>
                                <div class='info'>
                                    <div class='name'>
                                        <a class="profile-link" target="_blank" data-type="User" data-id="708410" href="https://angel.co/adam-bry">Adam Bry</a>
                                        <span class='title'>
&middot;
Founder &amp; CEO
</span>
                                    </div>
                                    <div class='bio'>Co-founder, CEO Skydio • Project Wing at <a href="https://angel.co/google-x-1" class="at_mention_link" target="_blank" title="Google [x]" data-mention="true" data-type="Startup" data-id="458758" data-slug_id="1394412" data-name="google-x-1"><span class="at_mention_symbol">@</span><span class="at_mention_slug">Google [x]</span></a> • Studied at <a href="https://angel.co/massachusetts-institute-of-technology" class="at_mention_link" target="_blank"><span class="at_mention_symbol">@</span><span class="at_mention_slug">Massachusetts Institute of Technology</span></a>, <a href="https://angel.co/franklin-w-olin-college-of-engineering" class="at_mention_link" target="_blank"><span class="at_mention_symbol">@</span><span class="at_mention_slug">Franklin W. Olin College of Engineering</span></a></div>
                                </div>
                            </div>
                            <div class='person'>
                                <div class='founder-pic'>
                                    <img alt="" src="https://d1qb2nb5cznatu.cloudfront.net/users/803623-medium_jpg?1412963828" />
                                </div>
                                <div class='info'>
                                    <div class='name'>
                                        <a class="profile-link" target="_blank" data-type="User" data-id="803623" href="https://angel.co/abraham-bachrach">Abraham Bachrach</a>
                                        <span class='title'>
&middot;
Founder &amp; CTO
</span>
                                    </div>
                                    <div class='bio'></div>
                                </div>
                            </div>
                            <div class='person'>
                                <div class='founder-pic'>
                                    <img alt="" src="https://d1qb2nb5cznatu.cloudfront.net/users/803622-medium_jpg?1468270925" />
                                </div>
                                <div class='info'>
                                    <div class='name'>
                                        <a class="profile-link" target="_blank" data-type="User" data-id="803622" href="https://angel.co/mdonahoe">Matt Donahoe</a>
                                        <span class='title'>
&middot;
Founder &amp; CXO
</span>
                                    </div>
                                    <div class='bio'>I make fun</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='details-row funding'>
                        <div class='head'>
                            <h2>Funding</h2>
                        </div>
                        <div class='content'>
                            $25M Series A in 2016 led by <a href="https://angel.co/andreessen-horowitz">Andreessen Horowitz</a>
                            <br> $3M Seed in 2015
                            <br>
                        </div>
                    </div>
                    <div class='footer-bar'>
                        <div class='active'>
                            Active 10 days ago
                        </div>
                        <a rel="facybox nofollow" href="/job_listings/report_company?company=skydio">Report this company</a>
                    </div>
                </div>
            </div>
        </div>
        <div data-slug="skydio" data-name="Skydio" data-user="false" class="c-button c-button--blue djl69 fan13 _a _jm" data-_tn="job_lists/apply_button">Apply
        </div>
    </div>
    <div data-id="324469" data-name="Fotokite" data-force-note="1" data-force-note-on-archive="0" data-allowed-to-mark-interest="0" data-listing-ids="[25519]" data-in-network="false" data-promoted="false" data-experiment-variant="control" class="job-list-item promo djl87 job_listings fbw9 browse_startups_table_row _a _jm" data-_tn="job_listings/browse_startups_table_row">
        <div class='browse-table-row-pic js-browse-table-row-pic'>
            <a target="_blank" href="https://angel.co/fotokite/jobs"><img alt=" at Fotokite" src="https://d1qb2nb5cznatu.cloudfront.net/startups/i/324469-c741badbbc506d60497f366e3a185f1e-thumb_jpg.jpg?buster=1432300702" /></a>
        </div>
        <div class='header-info'>
            <div class='browse-table-row-name js-browse-table-row-name'>
                <a class="startup-link" href="https://angel.co/fotokite/jobs">Fotokite</a>
            </div>
            <div class='cb'></div>
            <div class='tagline'>Aerial filming made simple</div>
            <div class='cb'></div>
            <div class='collapsed-job-listings collapsed-jobs-324469'>
                <div class='collapsed-listing-row'>
                    <div class='collapsed-title'>
                        Control Systems Engineer
                    </div>
                    <div class='collapsed-compensation'>
                        $60K &ndash; $100K &middot; 0.1% &ndash; 1.0% &middot;
                    </div>
                    <div class='collapsed-tags'>
                        Full Time
                    </div>
                </div>
                <div class='cb'></div>
            </div>
            <div class='tag-row'>
                <div class='tag active'>
                    <span class='icon fontello-ok'></span> Active 2 months ago
                </div>
                <div class='tag applicants'>
                    <span class='icon fontello-fire'></span>
                    <strong>2</strong> applicants last week
                </div>
                <div class='tag locations tiptip' title=''>
                    <span class='icon fontello-location'></span> Zurich
                </div>
                <div class='tag employees'>
                    <span class='icon fontello-group'></span> 1-10 employees
                </div>
            </div>
        </div>
        <div class='cb'></div>
        <div class='details details-324469'>
            <div class='startup-info-table'>
                <div class=" djl87 job_listings fbs77 browse_startup_details _a _jm" data-_tn="job_listings/browse_startup_details">
                    <div class='header_links'>
                        <div class='link'>
                            <a target="_blank" rel="nofollow" class="twitter-link" href="https://twitter.com/Fotokite_"><img alt="" src="//assets.angel.co/assets/icons/follow_twitter_gray-f117f5d812ef89718d43ee423b069353c721ee245bb6297a10cb7c1ab48879a2.png" /></a>
                        </div>
                        <div class='link'>
                            <a target="_blank" rel="nofollow" class="blog-link" href="https://vine.co/u/1129089516352016384"><img alt="" src="//assets.angel.co/assets/icons/blog_gray-506b0df9d219d60e93638bd2692b52f71f6e53975490eb8a53ff3ec5f7cb78e9.png" /></a>
                        </div>
                        <div class='link'>
                            <a target="_blank" class="website-link" rel=" nofollow noopener noreferrer" href="http://www.fotokite.com">fotokite.com</a>
                        </div>
                    </div>
                    <div class='js-connection'></div>
                    <div class='details-row jobs'>
                        <div class='head'>
                            <h2>
JOBS
</h2>
                        </div>
                        <div class='content'>
                            <div class='listing-row'>
                                <div class='top'>
                                    <div class='title'>
                                        <a target="_blank" href="https://angel.co/fotokite/jobs/25519-control-systems-engineer">Control Systems Engineer</a>
                                    </div>
                                    <div class='compensation'>$60K &ndash; $100K &middot; 0.1% &ndash; 1.0%</div>
                                </div>
                                <div class='tags'>
                                    Full Time &middot; Zurich &middot; Software Engineer &middot; C++ &middot; Control Systems &middot; C &middot; System Modeling & Simulation &middot; Kalman Filter &middot; ARM Cortex M4
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='details-row product'>
                        <div class='head'>
                            <h2>Product</h2>
                        </div>
                        <div class='content'>
                            <div class='description'>Fotokite mission is create universally accessible aerial photography solutions. The Fotokite is a tethered flying camera designed for reliable and safe flight, with a quick setup-to-shot ready time. It is perfect for journalism, aerial inspection, and fun. During the entire flight, the Fotokite maintains a constant angle for steady and smooth shooting. Thanks to this unique patent-pending approach, no piloting skills are required, and it is safe to use near people and infrastructures. The user can put all his focus on what really matters : finding the best view angle to obtain the most amazing aerial shots. We are a small energetic team of roboticists, combining top-notch systems engineering with intuitive user interaction to bring an accessible, safe and legal product to the market. We are currently refining our prototypes, using valuable real-life feedback from our strategic partners like BBC and National Geographic.
                            </div>
                            <div class='screenshots-parent'>
                                <div class='screenshots s-vgTop0_5'>
                                    <div class='screenshot-link' data-mfp-src='https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/original/000/411/320/411320-69c37f52d6d7f519d0bad08da167a8694cdccc39.jpg?1412689475'>
                                        <img alt="" src="https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/thumb/000/411/320/411320-40f0e40e8a1f602531526a1b8f56bfabb60c84cd.jpg?1412689475" />
                                    </div>
                                    <div class='screenshot-link' data-mfp-src='https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/original/000/411/324/411324-6670607545d0f1d814fb7bb370ac0fde40736d47.JPG?1412689581'>
                                        <img alt="" src="https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/thumb/000/411/324/411324-baca35bfbacf03bff0eed8910f45ae70f5697077.jpg?1412689581" />
                                    </div>
                                    <div class='screenshot-link' data-mfp-src='https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/original/000/389/303/389303-4e49dcebfa2ef4f32b63c6c31664a7ecfe143fd9.jpg?1409151759'>
                                        <img alt="" src="https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/thumb/000/389/303/389303-80774057940221dc589d1c5d7e7fd1774de06646.jpg?1409151759" />
                                    </div>
                                    <div class='screenshot-link' data-mfp-src='https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/original/000/389/304/389304-ce83c3bc7bdeb15482afa587daa622e65d74d9cb.jpg?1409151780'>
                                        <img alt="" src="https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/thumb/000/389/304/389304-55421b04b1af6dcc9370f5bb00ec52eff48b7984.jpg?1409151780" />
                                    </div>
                                    <div class='screenshot-link' data-mfp-src='https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/original/000/387/705/387705-7cc9ab11029722e05864114419f2631842e4fb53.jpg?1408961526'>
                                        <img alt="" src="https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/thumb/000/387/705/387705-d145ad80c0572b3a915c8403c9d2c5641f135fa4.jpg?1408961526" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='details-row why_us'>
                        <div class='head'>
                            <h2>Why Us</h2>
                        </div>
                        <div class='content'>
                            <p>We're a small energetic team bringing unique interactive robotics products to market. We are excited about making robotics mainstream and accessible. We aspire to build a solution that's versatile enough to be used by a snowboarder, a journalist, or a fireman. We're seeking talented, exceptional people to make this adventure happen. Join us! [Note copy&amp;paste applications will not be considered -- tell us why you want to work on *this* product]</p>
                        </div>
                    </div>
                    <div class='details-row team'>
                        <div class='head'>
                            <h2>Founders</h2>
                        </div>
                        <div class='content'>
                            <div class='person'>
                                <div class='founder-pic'>
                                    <img alt="" src="https://d1qb2nb5cznatu.cloudfront.net/users/487544-medium_jpg?1405661122" />
                                </div>
                                <div class='info'>
                                    <div class='name'>
                                        <a class="profile-link" target="_blank" data-type="User" data-id="487544" href="https://angel.co/sergeil">sergei lupashin</a>
                                        <span class='title'>
&middot;
Founder
</span>
                                    </div>
                                    <div class='bio'>Founder <a href="https://angel.co/fotokite" class="at_mention_link" target="_blank" title="Fotokite" data-mention="true" data-type="Startup" data-id="324469" data-slug_id="1001419" data-name="fotokite"><span class="at_mention_symbol">@</span><span class="at_mention_slug">Fotokite</span></a> • <a href="https://angel.co/ted" class="at_mention_link" target="_blank" title="TED" data-mention="true" data-type="Startup" data-id="45316" data-slug_id="230535" data-name="ted"><span class="at_mention_symbol">@</span><span class="at_mention_slug">TED</span></a> Fellow • Worked at <a href="https://angel.co/nextgen-aeronautics" class="at_mention_link" target="_blank" title="NextGen Aeronautics" data-mention="true" data-type="Startup" data-id="289293" data-slug_id="901958" data-name="nextgen-aeronautics"><span class="at_mention_symbol">@</span><span class="at_mention_slug">NextGen Aeronautics</span></a> • Studied at <a href="https://angel.co/cornell-university" class="at_mention_link" target="_blank"><span class="at_mention_symbol">@</span><span class="at_mention_slug">Cornell University</span></a>, <a href="https://angel.co/eth-zurich" class="at_mention_link" target="_blank"><span class="at_mention_symbol">@</span><span class="at_mention_slug">ETH Zurich</span></a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='details-row funding'>
                        <div class='head'>
                            <h2>Funding</h2>
                        </div>
                        <div class='content'>
                            Seed in 2013 led by <a href="https://angel.co/nccr-robotics-spin-fund-grant">NCCR-Robotics Spin Fund grant</a>
                            <br>
                        </div>
                    </div>
                    <div class='details-row tech'>
                        <div class='head'>
                            <h2>Tech</h2>
                        </div>
                        <div class='content'>
                            <p>The core algorithms were developed and refined over the course of three years of PhD work at the Flying Machine Arena (<a href="http://www.flyingmachinearena.org" target="_blank" rel="nofollow">http://www.flyingmachinearena.org</a>) at ETH Zurich, Switzerland. It turns out that the state of a tethered flying vehicles can be recovered using standard low-cost sensors, used in combination with sophisticated numerical filters to extract the desired signals. The same approach is used to enable novel interaction concepts for the Fotokite.</p>

                            <p>The core algorithmic components are protected by a patent application. We are committed to continuing advanced R&amp;D to stay at the edge of new developments in this space.</p>

                            <p>The Fotokite itself is a custom-designed, purpose-built tethered flying platform. We leverage the know-how and expertise of the team to bring top-notch integration and Q/A to the product and to produce a quality flying camera.
                                <br />Both general and specialized press received the product well (TED, Wired, etc) and we received multiple LOI (Microsoft, Parrot and CNN, etc).</p>
                        </div>
                    </div>
                    <div class='footer-bar'>
                        <div class='active'>
                            Active about 2 months ago
                        </div>
                        <a rel="facybox nofollow" href="/job_listings/report_company?company=fotokite">Report this company</a>
                    </div>
                </div>
            </div>
        </div>
        <div data-slug="fotokite" data-name="Fotokite" data-user="false" class="c-button c-button--blue djl69 fan13 _a _jm" data-_tn="job_lists/apply_button">Apply
        </div>
    </div>
    <div class='cb'></div>
    <div class='application-modal'></div>
</div>
|]
