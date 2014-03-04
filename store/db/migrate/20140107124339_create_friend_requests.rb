class CreateFriendRequests < ActiveRecord::Migration
  def change
    create_table :friend_requests do |t|
      t.integer :user_id
      t.integer :message_id
      t.boolean :accepted
      t.boolean :declined
      t.integer :reply_message_id
      t.integer :from_user_id
      t.integer :to_user_id

      t.timestamps
    end
  end
end
