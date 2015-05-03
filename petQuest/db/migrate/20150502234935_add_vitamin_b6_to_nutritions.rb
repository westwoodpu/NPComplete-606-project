class AddVitaminB6ToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :vitaminB6, :decimal
  end
end
