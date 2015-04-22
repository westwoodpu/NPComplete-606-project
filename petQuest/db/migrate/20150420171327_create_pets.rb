class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :gender
      t.string :pet_type
      t.string :age
      t.integer :body_weight
      t.string :breed
      t.string :body_condition_score
      t.string :activity

      t.timestamps null: false
    end
  end
end
