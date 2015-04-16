class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.text :description
      t.decimal :referencePrice
      t.integer :ediblePercentage
      t.text :cookMethod
      t.string :foodCategory

      t.timestamps null: false
    end
  end
end
