class AddArachidonicacidToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :arachidonicacid, :decimal,  :precision => 8, :scale =>2
  end
end
