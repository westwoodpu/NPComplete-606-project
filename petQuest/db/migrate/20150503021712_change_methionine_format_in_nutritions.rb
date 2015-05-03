class ChangeMethionineFormatInNutritions < ActiveRecord::Migration
   def up
 change_column :nutritions, :methionine, :decimal, :precision => 8, :scale =>2
  end
def down
  change_column :nutritions, :methionine, :decimal
end 
end
