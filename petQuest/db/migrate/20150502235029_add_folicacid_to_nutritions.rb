class AddFolicacidToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :folicacid, :decimal
  end
end
