class ChangeTryptophanFormatInNutritions < ActiveRecord::Migration
   def up
 change_column :nutritions, :tryptophan, :decimal, :precision => 8, :scale =>2
  end
def down
  change_column :nutritions, :tryptophan, :decimal
end 
end
