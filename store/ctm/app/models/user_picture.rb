class UserPicture < ActiveRecord::Base
  attr_accessible :approved, :approved_by_admin_id, :approved_date, :file_name, :user_id


  belongs_to :user_profile	
  belongs_to :approved_by_admin, class_name: 'User'
  mount_uploader :avatar, AvatarUploader
end
