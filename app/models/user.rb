class User < ApplicationRecord
    has_many :user_meetups
    has_many :user_topics
    has_many :topics, through: :user_topics
    has_many :meetups, through: :user_meetups
    has_many :comments
end
