class CreateCats < ActiveRecord::Migration
  def change

    create_table :cats do |t|
      t.string :name
      t.string :Pet
      t.string :Type
      t.string :Gender
      t.integer :Age
      t.string :Body
      t.string :Condition
      t.integer :Score
      t.string :Body
      t.integer :Weight
      t.string :Activity
      t.integer :Level
      t.string :Sterilization
      t.string :Time
      t.string :Vaccination
      t.string :History
      t.string :Anthelmintic
      t.string :Time
      t.string :Vitro
      t.string :Flea
      t.string :Flooding
      t.string :Time

      t.timestamps
    end
  end
end
