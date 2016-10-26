class CreateMissionsToSpaceTravelersJoinTable < ActiveRecord::Migration
  def change
      create_join_table :missions, :space_travelers
  end
end
