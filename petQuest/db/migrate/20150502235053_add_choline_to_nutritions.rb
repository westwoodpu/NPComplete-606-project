class AddCholineToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :choline, :decimal
  end
end
