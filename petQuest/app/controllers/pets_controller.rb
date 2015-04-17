class PetsController < ApplicationController
	def index
    @pets = Pet.all
    end
    
	def new
	end

  def create
		@pet = Pet.new(pet_params)

  	if @pet.save
       redirect_to @pet
    else
      render 'new'
    end
	end

  def edit
  @pet = Pet.find(params[:id])
  end

  def show
        @pet=Pet.find(params[:id])
  end

def update
  @pet = Pet.find(params[:id])
 
  if @pet.update(pet_params)
    redirect_to @pet
  else
    render 'edit'
  end
end
 


private
  def pet_params
  	  
      params.require(:pet).permit(:name, :age, :pet_type, :body_condition_score, :weight, :sterilization_time, :vaccination_history, :vivo_anthelmintic_time, :vitro_flea_flooding_time, :description)

  end

end
