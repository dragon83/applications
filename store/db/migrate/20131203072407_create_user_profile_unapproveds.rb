class CreateUserProfileUnapproveds < ActiveRecord::Migration
  def change
    create_table :user_profile_unapproveds do |t|
      t.integer :user_profile_id
      t.string :attribute
      t.boolean :approved
      t.string :rejection_message
      t.integer :review_status_id

      t.timestamps
    end
  end
end
