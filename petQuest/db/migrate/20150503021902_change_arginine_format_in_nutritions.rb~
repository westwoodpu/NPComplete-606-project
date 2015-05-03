class ChangeArginineFormatInNutritions < ActiveRecord::Migration
   def up
 change_column :nutritions, :arginine, :decimal
  end
def down
  change_column :nutritions, :arginine, :decimal, :precision => 8, :scale =>2
end 
end
