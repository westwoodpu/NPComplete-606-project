class ChangeChlorideFormatInNutritions < ActiveRecord::Migration
   def up
 change_column :nutritions, :chloride, :decimal
  end
def down
  change_column :nutritions, :chloride, :decimal, :precision => 8, :scale =>2
end 
end
