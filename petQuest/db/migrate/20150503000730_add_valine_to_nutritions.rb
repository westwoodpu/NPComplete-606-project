class AddValineToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :valine, :decimal
  end
end
