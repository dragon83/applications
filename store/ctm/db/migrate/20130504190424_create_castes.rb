class CreateCastes < ActiveRecord::Migration
  def change
    create_table :castes do |t|
      t.string :name
      t.integer :religion_id

      t.timestamps
    end
  end
end
