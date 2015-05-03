class AddMethionineToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :methionine, :decimal
  end
end
