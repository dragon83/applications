class UserFilter < ActiveRecord::Base
  attr_accessible :filter_name, :user_id

  belongs_to :user
  has_many :user_filter_attributes
end
