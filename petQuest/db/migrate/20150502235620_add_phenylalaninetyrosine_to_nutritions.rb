class AddPhenylalaninetyrosineToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :phenylalaninetyrosine, :decimal
  end
end
