class AddSpaceCraftIdToMission < ActiveRecord::Migration
  def change
    add_column :missions, :space_craft_id, :integer
  end
end
