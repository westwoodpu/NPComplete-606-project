class AddVitaminB5ToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :vitaminB5, :decimal
  end
end
