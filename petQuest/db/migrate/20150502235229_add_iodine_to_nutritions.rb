class AddIodineToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :iodine, :decimal
  end
end
