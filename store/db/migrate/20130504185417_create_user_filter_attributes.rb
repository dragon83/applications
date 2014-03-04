class CreateUserFilterAttributes < ActiveRecord::Migration
  def change
    create_table :user_filter_attributes do |t|
      t.integer :user_filter_id
      t.string :filter_attribute
      t.string :field_type

      t.timestamps
    end
  end
end
