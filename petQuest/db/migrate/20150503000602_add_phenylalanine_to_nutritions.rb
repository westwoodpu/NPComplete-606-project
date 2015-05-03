class AddPhenylalanineToNutritions < ActiveRecord::Migration
  def change
    add_column :nutritions, :phenylalanine, :decimal
  end
end
