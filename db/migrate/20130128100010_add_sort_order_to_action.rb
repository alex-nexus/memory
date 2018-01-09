class AddSortOrderToAction < ActiveRecord::Migration
  def change
    add_column :actions, :sort_order, :integer
  end
end
