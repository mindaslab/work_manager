class AddAssignedByAndAssignedToToWorks < ActiveRecord::Migration
  def change
    add_column :works, :assigned_by, :integer
    add_column :works, :assigned_to, :integer
    add_index :works, :assigned_by
    add_index :works, :assigned_to
  end
end
