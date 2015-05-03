class AddHistidineToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :histidine, :decimal
  end
end
