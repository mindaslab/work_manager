class AddAssignedByAndAssignedToToWorks < ActiveRecord::Migration
  def change
    add_column :works, :assigned_by, :integer
    add_column :works, :assigned_to, :integer
  end
end
