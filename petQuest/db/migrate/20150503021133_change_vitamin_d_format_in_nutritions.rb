class ChangeVitaminDFormatInNutritions < ActiveRecord::Migration
    def up
 change_column :nutritions, :vitaminD, :decimal, :precision => 8, :scale =>2
  end
def down
  change_column :nutritions, :vitaminD, :decimal
end 
end
