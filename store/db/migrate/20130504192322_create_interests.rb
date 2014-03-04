class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.integer :sender_id
      t.integer :receiver_id

      t.timestamps
    end
  end
end
