class ChangeIsoleucineFormatInNutritions < ActiveRecord::Migration
   def up
 change_column :nutritions, :isoleucine, :decimal, :precision => 8, :scale =>2
  end
def down
  change_column :nutritions, :isoleucine, :decimal
end 
end
