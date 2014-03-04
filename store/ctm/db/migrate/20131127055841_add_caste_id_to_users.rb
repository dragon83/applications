class AddCasteIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :caste_id, :integer
  end
end
