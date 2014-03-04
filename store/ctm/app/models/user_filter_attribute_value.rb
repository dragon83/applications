class UserFilterAttributeValue < ActiveRecord::Base
  attr_accessible :max, :min, :user_filter_attribute_id, :value
end
