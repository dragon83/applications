class UserProfileUnapproved < ActiveRecord::Base
  attr_accessible :approved, :attribute, :rejection_message, :review_status_id, :user_profile_id
end
