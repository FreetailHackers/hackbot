hellos = [
  "Well hello there, %",
  "Hey %, Hello!",
  "Good day, %",
  "Hey there %!",
  "Hi!",
  "Hi, %"
]

module.exports = (robot) ->
  robot.hear /(hey hackbot|hi hackbot|hello hackbot|)/i, (msg) ->
    hello = msg.random hellos
    msg.send hello.replace "%", msg.message.user.name

  robot.respond /where are you?/i, (msg) ->
    responses = [
        "In space. Cyberspace.",
        "I'm not sure. It's pretty dark in here.",
        "Where are you?"
    ]
    randomIndex = Math.floor(Math.random() * responses.length);
    msg.send responses[randomIndex]

  robot.hear /wave hackbot/i, (msg) ->
    responses = [
        "Hey. What's up?",
        "*sigh* At your service.",
        "What now?",
    ]
    randomIndex = Math.floor(Math.random() * responses.length);
    msg.send responses[randomIndex]
