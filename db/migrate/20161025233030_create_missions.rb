class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :name
      t.date :starts_on
      t.date :ends_on
      t.text :description

      t.timestamps null: false
    end
  end
end
