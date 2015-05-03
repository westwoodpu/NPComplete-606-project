class AddTaurineToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :taurine, :decimal
  end
end
