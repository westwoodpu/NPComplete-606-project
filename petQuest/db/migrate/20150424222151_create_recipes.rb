class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.integer :recipe_id
      t.string :foodname
      t.decimal :weight, precision: 8, scale: 2

      t.timestamps null: false
    end
  end
end
