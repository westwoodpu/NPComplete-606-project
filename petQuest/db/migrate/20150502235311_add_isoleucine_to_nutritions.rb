class AddIsoleucineToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :isoleucine, :decimal
  end
end
