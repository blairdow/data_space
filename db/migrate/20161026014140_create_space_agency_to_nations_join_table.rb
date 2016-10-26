class CreateSpaceAgencyToNationsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :space_agencies, :nations
  end
end
