class CreateUserPictures < ActiveRecord::Migration
  def change
    create_table :user_pictures do |t|
      t.integer :user_id
      t.boolean :approved
      t.integer :approved_by_admin_id
      t.string :file_name
      t.datetime :approved_date

      t.timestamps
    end
  end
end
