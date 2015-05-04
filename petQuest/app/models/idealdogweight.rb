class Idealdogweight < ActiveRecord::Base
def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Idealdogweight.create! row.to_hash
		end
	end
end
