class Idealcatweight < ActiveRecord::Base
def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Idealcatweight.create! row.to_hash
		end
	end
end
