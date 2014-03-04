class SubCaste < ActiveRecord::Base
  attr_accessible :caste_id, :caste_name, :religion_id
  belongs_to :caste
  belongs_to :religion
end
