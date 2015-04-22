class AddVitaminCToNutritionfacts < ActiveRecord::Migration
  def change
    add_column :nutritionfacts, :vitaminC, :decimal
  end
end
