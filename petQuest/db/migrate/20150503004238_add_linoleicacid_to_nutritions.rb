class AddLinoleicacidToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :linoleicacid, :decimal
  end
end
