class ChangeAgeFormatInPets < ActiveRecord::Migration
  def up
	change_column :pets, :age, :integer
  end

  def down
        change_column :pets, :age, :string
  end 
end
