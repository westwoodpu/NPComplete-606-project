class AddVitaminKToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :vitaminK, :decimal
  end
end
