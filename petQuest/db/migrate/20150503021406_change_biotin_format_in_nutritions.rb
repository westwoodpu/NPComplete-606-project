class ChangeBiotinFormatInNutritions < ActiveRecord::Migration
   def up
 change_column :nutritions, :biotin, :decimal
  end
def down
  change_column :nutritions, :biotin, :decimal, :precision => 8, :scale =>2
end 
end
