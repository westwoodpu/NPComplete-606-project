class CreateIdealdogweights < ActiveRecord::Migration
  def change
    create_table :idealdogweights do |t|
      t.string :english_name
      t.integer :min_kg
      t.integer :max_kg

      t.timestamps null: false
    end
  end
end
