class AddSpaceAgencyIdToPrograms < ActiveRecord::Migration
  def change
      add_column :programs, :space_agency_id, :integer
  end
end
