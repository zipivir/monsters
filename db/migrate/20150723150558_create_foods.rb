class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.references :food_monster, index: true, foreign_key: true
      t.string :name
      t.string :taste

      t.timestamps
    end
    add_index :foods, :monster_food_id
  end
end
