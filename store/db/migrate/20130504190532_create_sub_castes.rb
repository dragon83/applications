class CreateSubCastes < ActiveRecord::Migration
  def change
    create_table :sub_castes do |t|
      t.integer :caste_id
      t.string :caste_name
      t.integer :religion_id

      t.timestamps
    end
  end
end
