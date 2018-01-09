class AddSampleLine < ActiveRecord::Migration
  def up
    add_column :actions, :object_label, :string
    add_column :actions, :object_example, :string
  end

  def down
  end
end
