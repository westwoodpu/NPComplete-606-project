class FixPhoshorous < ActiveRecord::Migration
  def change
  	rename_column :nutritionfacts, :phoshorous, :phosphorous
  	rename_column :nutritions, :phoshorous, :phosphorous
  end
end
