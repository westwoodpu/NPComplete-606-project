class AddFoodreferenceToNutritionfacts < ActiveRecord::Migration
  def change
  	add_column :nutritionfacts, :food_id, :integer
  end
end
