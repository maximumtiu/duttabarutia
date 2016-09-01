class CreateTigers < ActiveRecord::Migration
  def change
    create_table :tigers do |t|
      t.string :location
      t.string :habitat
      t.integer :lifespan
      t.integer :weight
      t.float :length
      t.integer :population
      t.string :diet
      t.string :physical_characteristics
    end
  end
end
