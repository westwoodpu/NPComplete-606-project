class AddTryptophanToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :tryptophan, :decimal
  end
end
