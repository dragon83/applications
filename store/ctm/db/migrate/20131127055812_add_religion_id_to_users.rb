class AddReligionIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :religion_id, :integer
  end
end
