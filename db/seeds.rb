User.destroy_all
Topic.destroy_all
Meetup.destroy_all
UserMeetup.destroy_all
Comment.destroy_all
UserTopic.destroy_all

# USERS with password === first letter of name
joe = User.create(first_name: "Joe", email: "Joe@joe.com", password: "j")
amy = User.create(first_name: "Amy", email: "Amy@amy.com", password: "a")
bob = User.create(first_name: "Bob", email: "Bob@bob.com", password: "b")
joy = User.create(first_name: "Joy", email: "Joy@joy.com", password: "j")
jim = User.create(first_name: "Jim", email: "Jim@jim.com", password: "j")
liz = User.create(first_name: "Liz", email: "Liz@liz.com", password: "l")

ana = User.create(first_name: "Ana", email: "Ana@ana.com", password: "a")
dan = User.create(first_name: "Dan", email: "Dan@dan.com", password: "d")
cat = User.create(first_name: "Cat", email: "Cat@cat.com", password: "c")
sam = User.create(first_name: "Sam", email: "Sam@sam.com", password: "s")
ron = User.create(first_name: "Ron", email: "Ron@ron.com", password: "r")
vee = User.create(first_name: "Vee", email: "Vee@vee.com", password: "v")

# TOPICS
ruby = Topic.create(topic_name: "Ruby", description: "Ruby is an easy language.")
rails = Topic.create(topic_name: "Rails", description: "Rails is a framework.")
sinatra = Topic.create(topic_name: "Sinatra", description: "Our first project was in Sinatra.")
javascript = Topic.create(topic_name: "Vanilla JavaScript", description: "JavaScript loves curly braces.")
react = Topic.create(topic_name: "React", description: "React is a framework.")
redux = Topic.create(topic_name: "Redux", description: "Redux is a state-management system.")

python = Topic.create(topic_name: "Python", description: "Python is a programming language.")
html = Topic.create(topic_name: "HTML", description: "HTML is a markup language.")
css = Topic.create(topic_name: "CSS", description: "CSS helps you style your program.")
algo = Topic.create(topic_name: "Algorithms", description: "Algorithms allow you to manipulate data.")
bootstrap = Topic.create(topic_name: "bootstrap", description: "Bootstrap is a framework.")
sql = Topic.create(topic_name: "SQL", description: "SQL is useful for database management")

# MEETUPS
railsrun = Meetup.create(title: "Rails Run", date: "Dec 12", time: "5pm", location: "Zilker Park", topic_id: rails.id)
rubycamp = Meetup.create(title: "Ruby Camp", date: "May 5", time: "5pm", location: "We Work", topic_id: ruby.id)
sinatrasingalong = Meetup.create(title: "Sinatra Sing-Along", date: "Jan 9", time: "Ego's", location: "We Work", topic_id: sinatra.id)
javascriptjam = Meetup.create(title: "Javascript Jam", date: "Oct 27", time: "5pm", location: "Stubb's", topic_id: javascript.id)
reactandchill = Meetup.create(title: "React and Chill", date: "Apr 4", time: "5pm", location: "Austin Public Library", topic_id: react.id)
reduxmeetup = Meetup.create(title: "Redux Meetup", date: "Aug 15", time: "5pm", location: "Capitol Factory", topic_id: redux.id)

# USER_MEETUPS
meetup1 = UserMeetup.create(user_id: jim.id, meetup_id: railsrun.id)
meetup2 = UserMeetup.create(user_id: liz.id, meetup_id: rubycamp.id)
meetup3 = UserMeetup.create(user_id: joe.id, meetup_id: reduxmeetup.id)
meetup4 = UserMeetup.create(user_id: amy.id, meetup_id: reactandchill.id)
meetup5 = UserMeetup.create(user_id: bob.id, meetup_id: javascriptjam.id)
meetup6 = UserMeetup.create(user_id: joy.id, meetup_id: sinatrasingalong.id)

meetup6 = UserMeetup.create(user_id: ana.id, meetup_id: rubycamp.id)
meetup7 = UserMeetup.create(user_id: dan.id, meetup_id: reduxmeetup.id)
meetup8 = UserMeetup.create(user_id: cat.id, meetup_id: reactandchill.id)
meetup9 = UserMeetup.create(user_id: sam.id, meetup_id: javascriptjam.id)
meetup10 = UserMeetup.create(user_id: ron.id, meetup_id: sinatrasingalong.id)
meetup11 = UserMeetup.create(user_id: vee.id, meetup_id: railsrun.id)

# COMMENTS
comment1 = Comment.create(content: "This camp made it easy to learn Ruby!", user_id: liz.id, meetup_id: meetup2.id)
comment2 = Comment.create(content: "The Redux meetup was exactly what I was looking for!", user_id: joe.id, meetup_id: meetup6.id)
comment3 = Comment.create(content: "So greatful for this group! I'm starting to love React!", user_id: amy.id, meetup_id: meetup5.id)
comment4 = Comment.create(content: "I loved jamming with everyone! Maybe next time we'll bring our computers.", user_id: bob.id, meetup_id: meetup4.id)
comment5 = Comment.create(content: "Singing the words to the Sinatra docs is one way to learn...", user_id: joy.id, meetup_id: meetup3.id)
comment6 = Comment.create(content: "I never thought I'd be able to learn Rails with a running group but I was pleasantly surprised!", user_id: jim.id, meetup_id: meetup1.id)

comment7 = Comment.create(content: "Now I understand how Ruby and Rails go together", user_id: vee.id, meetup_id: meetup1.id)
comment8 = Comment.create(content: "I might implement Redux in my next project!", user_id: dan.id, meetup_id: meetup6.id)
comment9 = Comment.create(content: "These meetups make learning React seem simple.", user_id: cat.id, meetup_id: meetup5.id)
comment10 = Comment.create(content: "At first I was intimidated by the curly braces, but I'm starting to get JavaScript", user_id: sam.id, meetup_id: meetup4.id)
comment11 = Comment.create(content: "Great group for learning the basics of Sinatra!", user_id: ron.id, meetup_id: meetup3.id)
comment12 = Comment.create(content: "We made a Rails app in just 2 hours!", user_id: ana.id, meetup_id: meetup2.id)

# USER_TOPICS
usertopic1 = UserTopic.create(user_id: joe.id, topic_id: redux.id)
usertopic2 = UserTopic.create(user_id: amy.id, topic_id: react.id)
usertopic3 = UserTopic.create(user_id: bob.id, topic_id: javascript.id)
usertopic4 = UserTopic.create(user_id: joy.id, topic_id: sinatra.id)
usertopic5 = UserTopic.create(user_id: jim.id, topic_id: rails.id)
usertopic6 = UserTopic.create(user_id: liz.id, topic_id: ruby.id)