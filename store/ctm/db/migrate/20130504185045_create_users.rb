class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :code
      t.boolean :admin

      t.timestamps
    end
  end
end
