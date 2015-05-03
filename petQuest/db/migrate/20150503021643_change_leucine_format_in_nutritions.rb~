class ChangeLeucineFormatInNutritions < ActiveRecord::Migration
    def up
 change_column :nutritions, :leucine, :decimal
  end
def down
  change_column :nutritions, :leucine, :decimal, :precision => 8, :scale =>2
end 
end
