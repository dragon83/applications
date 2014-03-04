class AddNewValueToUserProfileUnapproved < ActiveRecord::Migration
  def change
    add_column :user_profile_unapproveds, :new_value, :string
  end
end
