class AddNationIdToSpaceTraveler < ActiveRecord::Migration
  def change
    add_column :space_travelers, :nation_id, :integer
  end
end
