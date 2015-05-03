class AddVitaminB12ToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :vitaminB12, :decimal
  end
end
