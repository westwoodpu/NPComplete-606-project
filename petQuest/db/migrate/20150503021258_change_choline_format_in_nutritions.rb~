class ChangeCholineFormatInNutritions < ActiveRecord::Migration
   def up
 change_column :nutritions, :choline, :decimal
  end
def down
  change_column :nutritions, :choline, :decimal, :precision => 8, :scale =>2
end 
end
