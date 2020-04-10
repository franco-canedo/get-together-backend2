# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Topic.destroy_all
User.destroy_all
Meetup.destroy_all
UserMeetup.destroy_all
UserTopic.destroy_all

ruby = Topic.create(topic_name: "Ruby", description: "Ruby is an easy language")
joe = User.create(first_name: "Joe", email: "Joe@joe.com", password: "a")
rubycamp = Meetup.create(title: "Ruby Camp", date: "May 5", time: "5pm", location: "We Work", topic_id: ruby.id)
meetup1 = UserMeetup.create(user_id: joe.id, meetup_id: rubycamp.id)
usertopic1 = UserTopic.create(user_id: joe.id, topic_id: ruby.id)
comment1 = Comment.create(content: "This is a comment", user_id: joe.id, meetup_id: meetup1.id)
# 
