class ChangeHistidineFormatInNutritions < ActiveRecord::Migration
    def up
 change_column :nutritions, :histidine, :decimal
  end
def down
  change_column :nutritions, :histidine, :decimal, :precision => 8, :scale =>2
end 
end
