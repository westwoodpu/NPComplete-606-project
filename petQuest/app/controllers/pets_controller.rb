class PetsController < ApplicationController
	def show
        @pet=Pet.find(params[:id])
    end
    
	def new
	end
    def create
		@pet = Pet.new(pet_params)

  	    @pet.save
        redirect_to @pet
	end


private
  def pet_params
  	  
      params.require(:pet).permit(:name, :age, :pet_type, :body_condition_score, :weight, :sterilization_time, :vaccination_history, :vivo_anthelmintic_time, :vitro_flea_flooding_time, :description)

  end


    

	#def index
	#end
	
	
end
