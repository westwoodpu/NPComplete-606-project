class AddChlorideToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :chloride, :decimal
  end
end
