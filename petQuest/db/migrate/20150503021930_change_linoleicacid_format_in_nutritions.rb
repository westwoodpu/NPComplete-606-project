class ChangeLinoleicacidFormatInNutritions < ActiveRecord::Migration
    def up
 change_column :nutritions, :linoleicacid, :decimal
  end
def down
  change_column :nutritions, :linoleicacid, :decimal, :precision => 8, :scale =>2
end 
end
