class RenameAction < ActiveRecord::Migration
  def up
    rename_table :actions, :verbs 
  end

  def down
    rename_table :verbs, :actions
  end
end
