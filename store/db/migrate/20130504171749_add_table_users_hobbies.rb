class AddTableUsersHobbies < ActiveRecord::Migration
  def change
    create_table :users_hobbies, id: false do |t|
      t.integer :user_id, :null => false
      t.integer :hobby_id, :null => false
    end
  end
end
