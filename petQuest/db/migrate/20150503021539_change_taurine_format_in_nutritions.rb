class ChangeTaurineFormatInNutritions < ActiveRecord::Migration
    def up
 change_column :nutritions, :taurine, :decimal, :precision => 8, :scale =>2
  end
def down
  change_column :nutritions, :taurine, :decimal
end 
end
