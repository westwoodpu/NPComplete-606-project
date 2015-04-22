class AddVitaminCToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :vitaminC, :decimal
  end
end
