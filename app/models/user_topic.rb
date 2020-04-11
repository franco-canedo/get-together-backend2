class UserTopic < ApplicationRecord
    belongs_to :topic, dependent: :destroy 
    belongs_to :user, dependent: :destroy 
end
