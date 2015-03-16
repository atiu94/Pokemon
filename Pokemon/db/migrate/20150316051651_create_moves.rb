class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :name
      t.integer :pp
      t.string :element

      t.timestamps
    end
  end
end
