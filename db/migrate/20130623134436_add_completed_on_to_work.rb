class AddCompletedOnToWork < ActiveRecord::Migration
  def change
    add_column :works, :completed_on, :datetime
  end
end
