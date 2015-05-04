class ChangeMinMaxKgInIdealcatweightsIdealdogweights < ActiveRecord::Migration
  def up
        change_column :idealcatweights, :min_kg, :float
        change_column :idealcatweights, :max_kg, :float
        change_column :idealdogweights, :min_kg, :float
        change_column :idealdogweights, :max_kg, :float
    end
    def down
        change_column :idealcatweights, :min_kg, :integer
        change_column :idealcatweights, :max_kg, :integer
        change_column :idealdogweights, :min_kg, :integer
        change_column :idealdogweights, :max_kg, :integer
    end     
end
