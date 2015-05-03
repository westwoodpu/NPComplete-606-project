class AddBiotinToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :biotin, :decimal
  end
end
