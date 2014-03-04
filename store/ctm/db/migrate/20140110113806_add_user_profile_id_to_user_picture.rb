class AddUserProfileIdToUserPicture < ActiveRecord::Migration
  def change
    add_column :user_pictures, :user_profile_id, :integer
  end
end
