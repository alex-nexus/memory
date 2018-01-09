class AddKindToAction < ActiveRecord::Migration
  def change
    add_column :actions, :kind, :string
  end
end
