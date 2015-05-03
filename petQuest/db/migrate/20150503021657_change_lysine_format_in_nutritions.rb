class ChangeLysineFormatInNutritions < ActiveRecord::Migration
    def up
  change_column :nutritions, :lysine, :decimal, :precision => 8, :scale =>2
  end
def down
  change_column :nutritions, :lysine, :decimal
end 
end
