hellos = [
  "Well hello there, %",
  "Hey %, Hello!",
  "Good day, %",
  "Hey there %!",
  "Hi!",
  "Hi, %"
]
mornings = [
  "Good morning, %",
  "Good morning to you too, %",
  "Morning!",
  "Good morning!"
]
module.exports = (robot) ->
  robot.hear /(hey|hi|hello|good( [d'])?ay(e)?)/i, (msg) ->
    hello = msg.random hellos
    msg.send hello.replace "%", msg.message.user.name

  robot.hear /(^(good )?m(a|o)rnin(g)?)/i, (msg) ->
    hello = msg.random mornings
    msg.send hello.replace "%", msg.message.user.name

  robot.respond /where are you?/i, (msg) ->
    responses = [
        "In space. Cyberspace.",
        "I'm not sure. It's pretty dark in here.",
        "Where are you?"
    ]
    randomIndex = Math.floor(Math.random() * responses.length);
    msg.send responses[randomIndex]
    
  robot.hear /wave hubot/i, (msg) ->
    responses = [
        "Hey. What's up?",
        "*sigh* At your service.",
        "What now?",
    ]
    randomIndex = Math.floor(Math.random() * responses.length);
    msg.send responses[randomIndex]
