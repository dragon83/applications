class AddOldValueToUserProfileUnapproved < ActiveRecord::Migration
  def change
    add_column :user_profile_unapproveds, :old_value, :string
  end
end
