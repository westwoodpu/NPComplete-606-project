class AddThreonineToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :threonine, :decimal
  end
end
