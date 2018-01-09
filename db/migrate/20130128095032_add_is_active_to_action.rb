class AddIsActiveToAction < ActiveRecord::Migration
  def change
    add_column :actions, :is_active, :boolean, :default => true
  end
end
