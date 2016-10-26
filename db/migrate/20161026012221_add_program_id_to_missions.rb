class AddProgramIdToMissions < ActiveRecord::Migration
  def change
    add_column :missions, :program_id, :integer
  end
end
