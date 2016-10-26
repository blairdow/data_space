class AddDefaultBudgetValue < ActiveRecord::Migration
  def change
      change_column_default :space_agencies, :budget, 0
  end
end
