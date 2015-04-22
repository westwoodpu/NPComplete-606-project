class CreateNutritionfacts < ActiveRecord::Migration
  def change
    create_table :nutritionfacts do |t|
      t.string :category
      t.string :foodname
      t.decimal :weight
      t.decimal :edible
      t.decimal :energy
      t.decimal :protein
      t.decimal :fat
      t.decimal :cho
      t.decimal :dietaryfiber
      t.decimal :ash
      t.decimal :cholesterol
      t.decimal :vitaminA
      t.decimal :retinol
      t.decimal :vitaminE
      t.decimal :vitaminB1
      t.decimal :vitaminB2
      t.decimal :vitaminB3
      t.decimal :calcium
      t.decimal :phoshorous
      t.decimal :potassium
      t.decimal :sodium
      t.decimal :magnesium
      t.decimal :iron
      t.decimal :zinc
      t.decimal :selenium
      t.decimal :copper
      t.decimal :manganese

      t.timestamps null: false
    end
  end
end
