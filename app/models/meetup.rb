class Meetup < ApplicationRecord
    has_many :user_meetups
    has_many :users, through: :user_meetups
    belongs_to :topic
    has_many :comments
end
