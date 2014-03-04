class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.integer :user_id
      t.boolean :gender
      t.date :dob
      t.datetime :tob
      t.string :pob
      t.integer :age
      t.integer :salary
      t.integer :caste_id
      t.integer :sub_caste_id
      t.integer :height
      t.integer :religion_id
      t.integer :affluence_id
      t.integer :profession
      t.integer :education
      t.integer :work_city
      t.integer :work_state
      t.integer :work_country
      t.integer :food_habit
      t.integer :mangalik
      t.integer :special_status
      t.boolean :specs
      t.integer :spec_power
      t.integer :marital_status
      t.integer :mother_tongue
      t.integer :complexion
      t.integer :body_type
      t.integer :weight
      t.integer :father_status
      t.integer :mother_status
      t.integer :father_profession
      t.integer :mother_profession
      t.integer :native
      t.integer :family_values
      t.integer :elder_brothers
      t.integer :elder_sisters
      t.integer :younger_brothers
      t.integer :younger_sisters

      t.timestamps
    end
  end
end
