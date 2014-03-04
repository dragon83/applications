class CreateUserFilterAttributeValues < ActiveRecord::Migration
  def change
    create_table :user_filter_attribute_values do |t|
      t.integer :user_filter_attribute_id
      t.integer :max
      t.integer :min
      t.string :value

      t.timestamps
    end
  end
end
