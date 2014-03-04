class CreateUserFilters < ActiveRecord::Migration
  def change
    create_table :user_filters do |t|
      t.integer :user_id
      t.string :filter_name

      t.timestamps
    end
  end
end
