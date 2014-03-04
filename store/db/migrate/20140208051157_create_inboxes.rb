class CreateInboxes < ActiveRecord::Migration
  def change
    create_table :inboxes do |t|
      t.integer :user_id
      t.integer :from_user
      t.integer :to_user
      t.integer :message_type_id
      t.integer :message_id

      t.timestamps
    end
  end
end
