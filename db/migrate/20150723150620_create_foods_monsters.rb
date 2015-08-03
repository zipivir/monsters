class CreateFoodsMonsters < ActiveRecord::Migration
  def change
    create_table :foods_monsters do |t|
      t.references :monster
      t.references :food

      t.timestamps
    end
    add_index :foods_monsters, :monster_id
    add_index :foods_monsters, :food_id
  end
end
