class ChangeVitaminB5FormatInNutritions < ActiveRecord::Migration
   def up
 change_column :nutritions, :vitaminB5, :decimal
  end
def down
  change_column :nutritions, :vitaminB5, :decimal, :precision => 8, :scale =>2
end 
end
