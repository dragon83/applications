class CreateAccepteds < ActiveRecord::Migration
  def change
    create_table :accepteds do |t|
      t.integer :user_id
      t.integer :friend_request_id
      t.integer :friend_id

      t.timestamps
    end
  end
end
