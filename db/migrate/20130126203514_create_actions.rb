class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.string :name
      t.boolean :hide_object
      t.boolean :hide_price
      t.boolean :hide_url
      t.boolean :hide_end_time
      t.boolean :hide_people

      t.timestamps
    end
  end
end
