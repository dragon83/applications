class AddAvatarToUserPictures < ActiveRecord::Migration
  def change
    add_column :user_pictures, :avatar, :string
  end
end
