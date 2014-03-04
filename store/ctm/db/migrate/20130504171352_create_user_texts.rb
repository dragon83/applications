class CreateUserTexts < ActiveRecord::Migration
  def change
    create_table :user_texts do |t|
      t.integer :user_id
      t.text :special_status
      t.text :own_status
      t.text :family
      t.text :profession

      t.timestamps
    end
  end
end
