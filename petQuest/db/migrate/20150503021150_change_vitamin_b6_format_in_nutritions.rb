class ChangeVitaminB6FormatInNutritions < ActiveRecord::Migration
    def up
  change_column :nutritions, :vitaminB6, :decimal, :precision => 8, :scale =>2
  end
def down
  change_column :nutritions, :vitaminB6, :decimal
end 
end
