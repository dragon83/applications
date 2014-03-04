class CreateStoreClassifications < ActiveRecord::Migration
  def change
    create_table :store_classifications do |t|
      t.string :description

      t.timestamps
    end
  end
end
