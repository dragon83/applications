class UserProfile < ActiveRecord::Base
  attr_accessible :affluence_id, :age, :body_type, :caste_id, :complexion, :dob, :education, :elder_brothers, :elder_sisters, :family_values, :father_profession, :father_status, :food_habit, :gender, :height, :mangalik, :marital_status, :mother_profession, :mother_status, :mother_tongue, :native, :pob, :profession, :religion_id, :salary, :spec_power, :special_status, :specs, :sub_caste_id, :tob, :user_id, :weight, :work_city, :work_country, :work_state, :younger_brothers, :younger_sisters
  belongs_to :religion
  belongs_to :caste
  belongs_to :sub_caste
  belongs_to :user
  has_moderated :younger_brothers, :younger_sisters
  has_many :user_pictures

  def primary_large_pic
    user_pictures.where(primary:true).first.avatar.url
  end

  def primary_thumb_pic
    user_pictures.where(primary:true).first.avatar.url(:thumb)
  end

end
