class AddMethionineCystineToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :methionine_cystine, :decimal
  end
end
