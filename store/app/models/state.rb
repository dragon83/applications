class State < ActiveRecord::Base
  attr_accessible :country_id, :name

  has_many :cities
  belongs_to :country
end
