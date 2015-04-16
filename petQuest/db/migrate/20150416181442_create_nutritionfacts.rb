class CreateNutritionfacts < ActiveRecord::Migration
  def change
    create_table :nutritionfacts do |t|
      t.string :foodname
      t.string :unit
      t.string :water
      t.string :energy
      t.string :protein
      t.string :fat
      t.string :cho
      t.string :dietaryFiber
      t.string :ash

      t.timestamps null: false
    end
  end
end
