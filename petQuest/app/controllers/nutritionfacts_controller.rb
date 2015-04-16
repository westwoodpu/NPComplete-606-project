class NutritionfactsController < ApplicationController
	def index
		@nutritionfacts = Nutritionfact.all
	end

	def show
		@nutritionfact = Nutritionfact.find(params[:id])
	end

	def new
		@nutritionfact = Nutritionfact.new
	end


	def create
		@nutritionfact = Nutritionfact.new(nutritionfact_params)
		if @nutritionfact.save
			redirect_to @nutritionfact
		else
			render 'new'
		end
	end

	private
		def nutritionfact_params
			params.require(:nutritionfact).permit(:foodname, :unit, :water, :energy, :protein, :fat, :cho, :dietaryFiber, :ash)
		end
end
