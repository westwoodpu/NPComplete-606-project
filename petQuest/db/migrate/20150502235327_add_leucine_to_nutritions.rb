class AddLeucineToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :leucine, :decimal
  end
end
