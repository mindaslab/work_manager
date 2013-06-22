class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.text :description
      t.datetime :deadline
      t.references :work

      t.timestamps
    end
    add_index :works, :work_id
  end
end
