class ChangeIodineFormatInNutritions < ActiveRecord::Migration
   def up
 change_column :nutritions, :iodine, :decimal, :precision => 8, :scale =>2
  end
def down
  change_column :nutritions, :iodine, :decimal
end 
end
