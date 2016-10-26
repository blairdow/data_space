class CreateNations < ActiveRecord::Migration
  def change
    create_table :nations do |t|
      t.string :name
      t.string :country_code

      t.timestamps null: false
    end
  end
end
