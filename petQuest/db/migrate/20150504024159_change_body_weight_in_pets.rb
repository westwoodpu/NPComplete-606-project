class ChangeBodyWeightInPets < ActiveRecord::Migration
  	def up
        change_column :pets, :body_weight, :float
    end
    def down
        change_column :pets, :body_weight, :integer
    end
end