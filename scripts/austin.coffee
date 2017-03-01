# Description:
#   When in Austin
#
# Dependencies:
#   "jsdom": "0.2.14"
#
# Configuration:
#   None
#
# Commands:
#   hubot when in austin - random austin related meme
#
# Author:
#   elliotttf

http = require 'http'
jsdom = require 'jsdom'

responses = [
    "http://wheninatx.tumblr.com/post/26837561095/when-a-northener-experiences-their-first-flying",
    "http://wheninatx.tumblr.com/post/21026506289/when-the-guy-in-front-of-you-at-torchys-asks-what",
    "http://wheninatx.tumblr.com/post/21027224829/when-you-remember-that-homeslice-is-closed-on",
    "http://wheninatx.tumblr.com/post/21029749825/tripped-on-burdine-steps-all-the-undergrads-laugh",
    "http://wheninatx.tumblr.com/post/21034077658/when-you-realize-the-frank-erwin-center-looks-like",
    "http://wheninatx.tumblr.com/post/21036899461/when-someone-suggests-foodheads-for-lunch",
    "http://wheninatx.tumblr.com/post/21034323097/when-your-friends-from-out-of-town-want-to-go-to",
    "http://wheninatx.tumblr.com/post/21043081263/when-your-friend-tells-you-they-are-moving-to",
    "http://wheninatx.tumblr.com/post/21073343279/when-you-took-guadalupe-and-its-round-up-weekend",
    "http://wheninatx.tumblr.com/post/21084651596/when-someone-teaches-you-how-to-pronounce-manchaca",
    "http://wheninatx.tumblr.com/post/21347971022/when-your-friend-orders-queso-before-you-even-have",
    "http://wheninatx.tumblr.com/post/21439532099/when-you-overhear-a-pointless-argument-on-fixed",
    "http://wheninatx.tumblr.com/post/21402879671/when-your-friend-with-a-truck-wont-take-you-to",
    "http://wheninatx.tumblr.com/post/21397355151/when-a-grackle-is-trying-to-fight-you-for-a-piece",
    "http://wheninatx.tumblr.com/post/21723944636/when-you-got-on-the-71-overpass-from-i-35-for-the",
    "http://wheninatx.tumblr.com/post/21701880512/when-someone-at-a-sxsw-party-got-the-last-free",
    "http://wheninatx.tumblr.com/post/21524900875/when-you-hear-how-much-money-the-co-op-is-willing",
    "http://wheninatx.tumblr.com/post/21828776403/when-youre-at-the-zilker-kite-festival",
    "http://wheninatx.tumblr.com/post/21797498050/when-you-tell-a-ut-student-that-trudys-isnt-all",
    "http://wheninatx.tumblr.com/post/21737606344/when-your-parents-pick-up-the-tab-at-uchi",
    "http://wheninatx.tumblr.com/post/21853861142/when-the-table-next-to-you-at-kerbey-lane-got",
    "http://wheninatx.tumblr.com/post/22605161279/austin-hipster-mating-call",
    "http://wheninatx.tumblr.com/post/22489766002/when-theres-an-event-downtown-and-apd-decided-to",
    "http://wheninatx.tumblr.com/post/22675059526/when-it-rains",
    "http://wheninatx.tumblr.com/post/23049435203/when-the-forecast-says-80-humidity",
    "http://wheninatx.tumblr.com/post/23040622579/when-another-magazine-picks-austin-as-their-top",
    "http://wheninatx.tumblr.com/post/22850465930/when-you-take-a-weekend-trip-with-friends",
    "http://wheninatx.tumblr.com/post/24273343250/when-you-see-your-first-bluebonnet-in-spring",
    "http://wheninatx.tumblr.com/post/31344807349/two-words-cold-front",
    "http://wheninatx.tumblr.com/post/32345352467/when-youre-still-using-your-student-id-to-ride",
    "http://wheninatx.tumblr.com/post/34253639589/when-you-re-enact-the-lion-king-every-time-youre",
    "http://wheninatx.tumblr.com/post/36920420754/the-first-girl-at-the-austin-hm",
    "http://wheninatx.tumblr.com/post/28064197766/when-the-person-in-front-of-you-at-daily-juice",
    "http://wheninatx.tumblr.com/post/24618574336/when-its-mosquito-season-again",
    "http://wheninatx.tumblr.com/post/23290619824/when-its-bike-to-work-day-and-you-spot-an-open",
    "http://wheninatx.tumblr.com/post/23165574121/when-youre-under-the-mopac-pedestrian-bridge-and",
    "http://wheninatx.tumblr.com/post/22717604027/when-you-still-live-on-riverside-because-rent-is",
    "http://wheninatx.tumblr.com/post/22605598493/when-the-air-conditioner-broke-in-your-car",
    "http://wheninatx.tumblr.com/post/22333926733/when-a-co-worker-brings-sugar-mamas-cupcakes-for",
    "http://wheninatx.tumblr.com/post/21981983834/when-barley-swine-tells-you-the-wait-will-be-at",
    "http://wheninatx.tumblr.com/post/21911881201/when-you-found-out-trader-joes-was-coming-to",
    "http://wheninatx.tumblr.com/post/21853861142/when-the-table-next-to-you-at-kerbey-lane-got",
    "http://wheninatx.tumblr.com/post/21734832245/when-someone-tells-you-they-moved-to-austin-to",
    "http://wheninatx.tumblr.com/post/21110460817/when-that-fucking-pay-station-keeps-saying-card-not",
    "http://wheninatx.tumblr.com/post/21240900511/when-you-notice-the-price-of-that-margarita-at",
    "http://wheninatx.tumblr.com/post/21111066650/when-its-150-degrees-at-stubbs-and-mother-nature",
    "http://wheninatx.tumblr.com/post/21085072650/when-its-the-most-magical-day-and-somehow-there",
    "http://wheninatx.tumblr.com/post/21083764467/when-it-rains-and-that-guy-in-a-truck-is-sure-he",
    "http://wheninatx.tumblr.com/post/21044781830/when-you-got-on-the-upper-deck-of-35-on-accident"
]

module.exports = (robot) ->
  robot.respond /when(\s)?in(\s)?austin/i, (msg) ->
    # Random redirects us to another article, grab that url and respond.
    location = options = responses[Math.floor(Math.random() * responses.length)]
    jsdom.env location, [ 'http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js' ], (errors, window) ->
      (($) ->
        title = $('meta[property="og:title"]').attr('content')
        img = $('article p[align="center"] img').attr('src')

        msg.send title + ' ' + img
      )(window.jQuery)
