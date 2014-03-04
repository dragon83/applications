class UserFilterAttribute < ActiveRecord::Base
  attr_accessible :field_type, :filter_attribute, :user_filter_id

  belongs_to :user_filter
end
