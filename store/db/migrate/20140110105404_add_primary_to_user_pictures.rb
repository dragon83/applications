class AddPrimaryToUserPictures < ActiveRecord::Migration
  def change
    add_column :user_pictures, :primary, :boolean
  end
end
