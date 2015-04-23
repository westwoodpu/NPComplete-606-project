class Food < ActiveRecord::Base
	has_one :nutritionfact, :dependent => :destroy
end
