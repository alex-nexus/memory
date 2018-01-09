class ChangeLines < ActiveRecord::Migration
  def up
    remove_column :lines, :action
    add_column :lines, :action_id, :string
  end

  def down
    remove_column :lines, :action, :string
    drop_column :lines, :action_id
  end
end
