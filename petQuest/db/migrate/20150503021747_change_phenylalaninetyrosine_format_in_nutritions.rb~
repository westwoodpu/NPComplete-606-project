class ChangePhenylalaninetyrosineFormatInNutritions < ActiveRecord::Migration
    def up
 change_column :nutritions, :phenylalaninetyrosine, :decimal
  end
def down
  change_column :nutritions, :phenylalaninetyrosine, :decimal, :precision => 8, :scale =>2
end 
end
