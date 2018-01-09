class RenameVerbIdToAction < ActiveRecord::Migration
  def up
    rename_column :lines, :action_id, :verb_id
  end

  def down
  end
end
