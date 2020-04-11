class Comment < ApplicationRecord
    belongs_to :meetup, dependent: :destroy 
    belongs_to :user, dependent: :destroy 
end
