class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

# rails g resource User name email password
# rails g resource User_Meetup user_id meetup_id
# rails g resource Meetup name date time location topic attendees commments
# rails g resource User_Topic
# rails g resource Topic name description 
# rails g resource Comment content user_id meetup_id
