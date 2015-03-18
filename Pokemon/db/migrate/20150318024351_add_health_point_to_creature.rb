class AddHealthPointToCreature < ActiveRecord::Migration
  def change
    add_column :creatures, :health_point, :integer
  end
end
