class ChangePhenylalanineFormatInNutritions < ActiveRecord::Migration
    def up
 change_column :nutritions, :phenylalanine, :decimal
  end
def down
  change_column :nutritions, :phenylalanine, :decimal, :precision => 8, :scale =>2
end 
end
