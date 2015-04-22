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
			params.require(:nutritionfact).permit(
		       :category,
		       :foodname,
		       :weight,
		       :edible,
		       :energy,
		       :protein,
		       :fat,
		       :cho,
		       :dietaryfiber,
		       :ash,
		       :cholesterol,
		       :vitaminA,
		       :retinol,
		       :vitaminE,
		       :vitaminB1,
		       :vitaminB2,
		       :vitaminB3,
		       :calcium,
		       :phoshorous,
		       :potassium,
		       :sodium,
		       :magnesium,
		       :iron,
		       :zinc,
		       :selenium,
		       :copper,
		       :manganese
			)
		end
end
