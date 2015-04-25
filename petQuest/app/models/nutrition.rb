class Nutrition < ActiveRecord::Base
	belongs_to :food
	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Nutrition.create! row.to_hash
		end
	end
end
