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
bootstrap = Topic.create(topic_name: "Bootstrap", description: "Bootstrap is a framework.")
sql = Topic.create(topic_name: "SQL", description: "SQL is useful for database management")

# MEETUPS
railsrun = Meetup.create(title: "Rails Run", date: "Dec 12", time: "7am", location: "Zilker Park", topic_id: rails.id,
image: "https://cdn6.dissolve.com/p/D145_211_434/D145_211_434_1200.jpg")
rubycamp = Meetup.create(title: "Ruby Camp", date: "May 5", time: "1pm", location: "We Work", topic_id: ruby.id,
image: "https://www.nps.gov/grte/planyourvisit/images/JLCG_tents_Teewinot_2008_mattson_1.JPG?maxwidth=1200&maxheight=1200&autorotate=false")
sinatrasingalong = Meetup.create(title: "Sinatra Sing-Along", date: "Jan 9", time: "8pm", location: "Ego's", topic_id: sinatra.id,
image: "https://2cadxu4apic638boqt1kzcoz-wpengine.netdna-ssl.com/wp-content/uploads/2019/07/anytime-karaoke-nyc.jpg")
javascriptjam = Meetup.create(title: "Javascript Jam", date: "Oct 27", time: "9pm", location: "Stubb's", topic_id: javascript.id,
image: "https://i.pinimg.com/originals/fa/00/d9/fa00d9015b4d9487f1c5b128aa057383.jpg")
reactandchill = Meetup.create(title: "React and Chill", date: "Apr 4", time: "4pm", location: "Austin Public Library", topic_id: react.id,
image: "https://st.hzcdn.com/simgs/edb17cc60114372f_4-1895/home-design.jpg")
reduxmeetup = Meetup.create(title: "Redux Meetup", date: "Aug 15", time: "10am", location: "Capitol Factory", topic_id: redux.id,
image: "https://i.pinimg.com/originals/75/1e/4c/751e4c6c166e74b990bf4de7fcb8c82d.jpg")

pythonhike = Meetup.create(title: "Python Hike", date: "Feb 8", time: "9am", location: "Greenbelt", topic_id: python.id,
image: "https://2.bp.blogspot.com/-yoQUwwGTZqA/UbD0zCByNsI/AAAAAAAABAo/IgFXOSu5H8w/s1600/Bull+Creek+003.JPG")
htmlchat = Meetup.create(title: "HTML Chat", date: "Jun 11", time: "3pm", location: "We Work", topic_id: html.id,
image: "https://www.ihis.info/wp-content/uploads/2018/07/office-relaxation-unique-on-and-chill-out-trivago-photo-glassdoor-co-uk-2.jpg")
csslounge = Meetup.create(title: "CSS Lounge", date: "Mar 1", time: "4pm", location: "Whole Foods", topic_id: css.id,
image: "https://cdn.vox-cdn.com/thumbor/JjJfl3jqsP_l-1OaRdWSsQWLwsI=/0x0:2048x1152/1600x900/cdn.vox-cdn.com/uploads/chorus_image/image/53411511/whole_foods_nyc_restaurant.0.jpg")
algoyoga = Meetup.create(title: "Algo Yoga", date: "Jul 19", time: "10pm", location: "Black Swan", topic_id: algo.id,
image: "https://s13473.pcdn.co/merchant/wp-content/uploads/2018/09/opening-a-yoga-studio_blog.jpg")
bootstrapbingo = Meetup.create(title: "Bootstrap Bingo", date: "Nov 14", time: "7pm", location: "Alamo Drafthouse", topic_id: bootstrap.id,
image: "https://www.reviewjournal.com/wp-content/uploads/2016/11/web1_santafebingo-nov23-16_111816_004_7419147.jpg")
sqlcycling = Meetup.create(title: "SQL Cycling", date: "Sep 29", time: "6am", location: "South Congress", topic_id: sql.id,
image: "https://media-cdn.wehco.com/img/photos/2016/08/07/bikerace13249344951.jpg")

# USER_MEETUPS
meetup1 = UserMeetup.create(user_id: jim.id, meetup_id: railsrun.id)
meetup2 = UserMeetup.create(user_id: liz.id, meetup_id: rubycamp.id)
meetup3 = UserMeetup.create(user_id: joe.id, meetup_id: reduxmeetup.id)
meetup4 = UserMeetup.create(user_id: amy.id, meetup_id: reactandchill.id)
meetup5 = UserMeetup.create(user_id: bob.id, meetup_id: javascriptjam.id)
meetup6 = UserMeetup.create(user_id: joy.id, meetup_id: sinatrasingalong.id)

meetup7 = UserMeetup.create(user_id: ana.id, meetup_id: railsrun.id)
meetup8 = UserMeetup.create(user_id: dan.id, meetup_id: reduxmeetup.id)
meetup9 = UserMeetup.create(user_id: cat.id, meetup_id: reactandchill.id)
meetup10 = UserMeetup.create(user_id: sam.id, meetup_id: javascriptjam.id)
meetup11 = UserMeetup.create(user_id: ron.id, meetup_id: sinatrasingalong.id)
meetup12 = UserMeetup.create(user_id: vee.id, meetup_id: rubycamp.id)

meetup13 = UserMeetup.create(user_id: jim.id, meetup_id: bootstrapbingo.id)
meetup14 = UserMeetup.create(user_id: liz.id, meetup_id: sqlcycling.id)
meetup15 = UserMeetup.create(user_id: joe.id, meetup_id: pythonhike.id)
meetup16 = UserMeetup.create(user_id: amy.id, meetup_id: htmlchat.id)
meetup17 = UserMeetup.create(user_id: bob.id, meetup_id: csslounge.id)
meetup18 = UserMeetup.create(user_id: joy.id, meetup_id: algoyoga.id)

meetup19 = UserMeetup.create(user_id: ana.id, meetup_id: sqlcycling.id)
meetup20 = UserMeetup.create(user_id: dan.id, meetup_id: pythonhike.id)
meetup21 = UserMeetup.create(user_id: cat.id, meetup_id: htmlchat.id)
meetup22 = UserMeetup.create(user_id: sam.id, meetup_id: csslounge.id)
meetup23 = UserMeetup.create(user_id: ron.id, meetup_id: algoyoga.id)
meetup24 = UserMeetup.create(user_id: vee.id, meetup_id: bootstrapbingo.id)

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

usertopic7 = UserTopic.create(user_id: ana.id, topic_id: rails.id)
usertopic8 = UserTopic.create(user_id: dan.id, topic_id: redux.id)
usertopic9 = UserTopic.create(user_id: cat.id, topic_id: react.id)
usertopic10 = UserTopic.create(user_id: sam.id, topic_id: javascript.id)
usertopic11 = UserTopic.create(user_id: ron.id, topic_id: sinatra.id)
usertopic12 = UserTopic.create(user_id: vee.id, topic_id: ruby.id)

usertopic13 = UserTopic.create(user_id: joe.id, topic_id: python.id)
usertopic14 = UserTopic.create(user_id: amy.id, topic_id: html.id)
usertopic15 = UserTopic.create(user_id: bob.id, topic_id: css.id)
usertopic16 = UserTopic.create(user_id: joy.id, topic_id: algo.id)
usertopic17 = UserTopic.create(user_id: jim.id, topic_id: bootstrap.id)
usertopic18 = UserTopic.create(user_id: liz.id, topic_id: sql.id)

usertopic19 = UserTopic.create(user_id: ana.id, topic_id: sql.id)
usertopic20 = UserTopic.create(user_id: dan.id, topic_id: python.id)
usertopic21 = UserTopic.create(user_id: cat.id, topic_id: html.id)
usertopic22 = UserTopic.create(user_id: sam.id, topic_id: css.id)
usertopic23 = UserTopic.create(user_id: ron.id, topic_id: algo.id)
usertopic24 = UserTopic.create(user_id: vee.id, topic_id: bootstrap.id)