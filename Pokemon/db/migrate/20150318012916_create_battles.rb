class CreateBattles < ActiveRecord::Migration
  def change
    create_table :battles do |t|
      t.integer :creature_location_id
      t.integer :user_creature_id
      t.integer :user_creature_current_health_point
      t.integer :creature_current_health_point

      t.timestamps
    end
  end
end
