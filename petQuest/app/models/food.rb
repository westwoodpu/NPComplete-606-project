class Food < ActiveRecord::Base
	has_one :nutrition, :dependent => :destroy
	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Food.create! row.to_hash
		end
	end

	
end
