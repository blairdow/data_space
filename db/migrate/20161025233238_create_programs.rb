class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
