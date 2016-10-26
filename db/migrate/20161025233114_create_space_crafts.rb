class CreateSpaceCrafts < ActiveRecord::Migration
  def change
    create_table :space_crafts do |t|
      t.string :name
      t.string :build
      t.integer :payload_capacity

      t.timestamps null: false
    end
  end
end
