class ChangeDefaultWorkIdValueInWorks < ActiveRecord::Migration
  def up
  	change_column_default :works, :work_id, 0
  end

  def down
  	change_column_default :works, :work_id, nil
  end
end
