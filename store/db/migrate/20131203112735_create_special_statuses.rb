class CreateSpecialStatuses < ActiveRecord::Migration
  def change
    create_table :special_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
