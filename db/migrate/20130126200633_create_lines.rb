class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.string :people
      t.string :action
      t.string :object
      t.string :place
      t.datetime :time
      t.float :price
      t.string :photo
      t.string :url
      t.text :note

      t.timestamps
    end
  end
end
