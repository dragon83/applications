class Store < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :name, :store_classification
end
