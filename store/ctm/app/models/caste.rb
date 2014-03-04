class Caste < ActiveRecord::Base
  attr_accessible :name, :religion_id

  belongs_to :religion
  has_many :sub_castes

  validates :name, :religion_id, presence: true
  validates :name, uniqueness: { scope: :religion_id }
end
