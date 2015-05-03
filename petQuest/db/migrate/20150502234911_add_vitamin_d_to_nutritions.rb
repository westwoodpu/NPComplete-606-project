class AddVitaminDToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :vitaminD, :decimal
  end
end
