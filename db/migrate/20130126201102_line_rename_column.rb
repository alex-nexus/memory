class LineRenameColumn < ActiveRecord::Migration
  def self.up
    rename_column :lines, :time, :start_time
    add_column :lines, :end_time, :timestamp
  end
  
  def self.down
    rename_column :lines, :start_time, :time 
    drop_column :lines, :end_time
  end
end
