class AddIndexToLines < ActiveRecord::Migration
  def change
    add_index :lines, :user_id
    add_index :lines, :action_id
    add_index :lines, :start_time
  end
end
