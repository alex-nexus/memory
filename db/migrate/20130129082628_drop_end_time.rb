class DropEndTime < ActiveRecord::Migration
  def up
    remove_column :lines, :end_time
    remove_column :actions, :hide_end_time
  end

  def down
    add_column :lines, :end_time, :timestamp
    add_column :actions, :hide_end_time, :boolean
  end
end
