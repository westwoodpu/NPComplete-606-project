class CreateIdealcatweights < ActiveRecord::Migration
  def change
    create_table :idealcatweights do |t|
      t.string :english_name
      t.integer :min_kg
      t.integer :max_kg

      t.timestamps null: false
    end
  end
end
