class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.references :zone, index: true, foreign_key: true
      t.string :color
      t.string :name
	  t.references :food_monster, index: true, foreign_key: true
      
      t.timestamps
    end
    add_index :monsters, :zone_id
  end
end
