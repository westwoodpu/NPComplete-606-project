class ChangeVitaminB12FormatInNutritions < ActiveRecord::Migration
    def up
 change_column :nutritions, :vitaminB12, :decimal, :precision => 8, :scale =>2
  end
def down
  change_column :nutritions, :vitaminB12, :decimal
end 
end
