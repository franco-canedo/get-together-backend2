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

# TOPICS
ruby = Topic.create(topic_name: "Ruby", description: "Ruby is an easy language")
rails = Topic.create(topic_name: "Rails", description: "Rails is a framework")
sinatra = Topic.create(topic_name: "Sinatra", description: "Our first project was in Sinatra")
javascript = Topic.create(topic_name: "Vanilla JavaScript", description: "JavaScript loves { }")
react = Topic.create(topic_name: "React", description: "React is a framework")
redux = Topic.create(topic_name: "Redux", description: "Redux is a state-management system")

# MEETUPS
rubycamp = Meetup.create(title: "Ruby Camp", date: "May 5", time: "5pm", location: "We Work", topic_id: ruby.id)
railsrun = Meetup.create(title: "Rails Run", date: "Dec 12", time: "5pm", location: "Zilker Park", topic_id: rails.id)
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

# COMMENTS
comment1 = Comment.create(content: "The Redux meetup was exactly what I was looking for!", user_id: joe.id, meetup_id: meetup6.id)
comment2 = Comment.create(content: "So greatful for this group! I'm starting to love React!", user_id: amy.id, meetup_id: meetup5.id)
comment3 = Comment.create(content: "I loved jamming with everyone! Maybe next time we'll bring our computers.", user_id: bob.id, meetup_id: meetup4.id)
comment4 = Comment.create(content: "Singing the words to the Sinatra docs is one way to learn...", user_id: joy.id, meetup_id: meetup3.id)
comment5 = Comment.create(content: "I never thought I'd be able to learn Rails with a running group but I was pleasantly surprised!", user_id: jim.id, meetup_id: meetup2.id)
comment6 = Comment.create(content: "This camp made it easy to learn Ruby!", user_id: liz.id, meetup_id: meetup1.id)

# USER_TOPICS
usertopic1 = UserTopic.create(user_id: joe.id, topic_id: redux.id)
usertopic2 = UserTopic.create(user_id: amy.id, topic_id: react.id)
usertopic3 = UserTopic.create(user_id: bob.id, topic_id: javascript.id)
usertopic4 = UserTopic.create(user_id: joy.id, topic_id: sinatra.id)
usertopic5 = UserTopic.create(user_id: jim.id, topic_id: rails.id)
usertopic6 = UserTopic.create(user_id: liz.id, topic_id: ruby.id)