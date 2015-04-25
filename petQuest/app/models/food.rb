class Food < ActiveRecord::Base
	has_one :nutrition, :dependent => :destroy
	def self.import(file2)
		CSV.foreach(file2.path, headers: true) do |row|
			Food.create! row.to_hash
		end
	end
end




