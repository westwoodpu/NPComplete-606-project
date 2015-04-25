class ChangeDecimalPrecisionInNutritions < ActiveRecord::Migration
  def change
  	change_column :nutritions, :weight, :decimal, :precision => 8, :scale => 2
	change_column :nutritions, :weight, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :edible, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :energy, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :protein, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :fat, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :cho, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :dietaryfiber, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :ash, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :cholesterol, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :vitaminA, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :retinol, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :vitaminE, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :vitaminB1, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :vitaminB2, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :vitaminB3, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :calcium, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :phosphorous, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :potassium, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :sodium, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :magnesium, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :iron, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :zinc, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :selenium, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :copper, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :manganese, :decimal, :precision => 8, :scale => 2
    change_column :nutritions, :vitaminC, :decimal, :precision => 8, :scale => 2
  end
end
