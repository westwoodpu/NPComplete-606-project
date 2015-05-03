class AddLysineToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :lysine, :decimal
  end
end
