class AddTableUsersDegrees < ActiveRecord::Migration
  def change
    create_table :users_degrees, id: false do |t|
      t.integer :user_id, :null => false
      t.integer :degree_id, :null => false
    end
  end
end
