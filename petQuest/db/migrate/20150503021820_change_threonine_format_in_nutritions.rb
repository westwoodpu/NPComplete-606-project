class ChangeThreonineFormatInNutritions < ActiveRecord::Migration
    def up
  change_column :nutritions, :threonine, :decimal, :precision => 8, :scale =>2
  end
def down
  change_column :nutritions, :threonine, :decimal
end 
end
