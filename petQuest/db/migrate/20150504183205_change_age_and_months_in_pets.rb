class ChangeAgeAndMonthsInPets < ActiveRecord::Migration
  def change
change_column :pets, :age, :integer, :default => 0
change_column :pets, :months, :integer, :default => 0
  end
end
