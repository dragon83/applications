class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :msg_content

      t.timestamps
    end
  end
end
