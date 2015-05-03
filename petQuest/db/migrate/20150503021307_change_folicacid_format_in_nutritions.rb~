class ChangeFolicacidFormatInNutritions < ActiveRecord::Migration
   def up
 change_column :nutritions, :folicacid, :decimal
  end
def down
  change_column :nutritions, :folicacid, :decimal, :precision => 8, :scale =>2
end 
end
