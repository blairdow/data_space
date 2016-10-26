class AddDefaultActiveValue < ActiveRecord::Migration
  def change
    change_column_default :programs, :is_active, false
  end
end
