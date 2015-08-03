class CreateZones < ActiveRecord::Migration
  def change
    create_table :zones do |t|
      t.string :description
      t.integer :monsters_num

      t.timestamps
    end
  end
end
