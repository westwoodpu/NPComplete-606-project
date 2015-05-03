class AddMonthsToPets < ActiveRecord::Migration
  def change
    add_column :pets, :months, :integer
  end
end
