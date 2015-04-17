class CreatePets < ActiveRecord::Migration
  def change
    
    create_table :pets do |t|
      t.string :name
      t.string :age
      t.string :pet_type
      t.string :body_condition_score
      t.string :weight
      t.string :sterilization_time
      t.text :vaccination_history
      t.string :vivo_anthelmintic_time
      t.string :vitro_flea_flooding_time
      t.text :description

      t.timestamps null: false
    end
  end
end
