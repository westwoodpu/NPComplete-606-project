class ChangeValineFormatInNutritions < ActiveRecord::Migration
   def up
 change_column :nutritions, :valine, :decimal
  end
def down
  change_column :nutritions, :valine, :decimal, :precision => 8, :scale =>2
end 
end
