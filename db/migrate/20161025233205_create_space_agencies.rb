class CreateSpaceAgencies < ActiveRecord::Migration
  def change
    create_table :space_agencies do |t|
      t.string :abbreviation
      t.string :name
      t.string :english_name
      t.integer :budget
      t.date :founded_on

      t.timestamps null: false
    end
  end
end
