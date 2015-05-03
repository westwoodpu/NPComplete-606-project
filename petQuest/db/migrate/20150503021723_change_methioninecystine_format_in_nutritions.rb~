class ChangeMethioninecystineFormatInNutritions < ActiveRecord::Migration
   def up
 change_column :nutritions, :methionine_cystine, :decimal
  end
def down
  change_column :nutritions, :methionine_cystine, :decimal, :precision => 8, :scale =>2
end 
end
