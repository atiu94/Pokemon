class CreateCreatures < ActiveRecord::Migration
  def change
    create_table :creatures do |t|
      t.string :name
      t.string :element
      t.string :description
      t.string :sprite

      t.timestamps
    end
  end
end
