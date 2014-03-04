class UserText < ActiveRecord::Base
  attr_accessible :family, :own_status, :profession, :special_status, :user_id

  belongs_to :user
end
