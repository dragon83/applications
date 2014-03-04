class AddSubCasteIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sub_caste_id, :integer
  end
end
