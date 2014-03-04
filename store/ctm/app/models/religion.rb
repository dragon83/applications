class Religion < ActiveRecord::Base
  attr_accessible :name

  has_many :castes, class_name: 'Caste'

  validates :name, presence: true, uniqueness: true
end
