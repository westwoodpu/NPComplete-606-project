class AddArginineToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :arginine, :decimal
  end
end
