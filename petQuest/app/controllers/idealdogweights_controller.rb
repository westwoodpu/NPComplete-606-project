class IdealdogweightsController < ApplicationController
def index

end
def import


  	Idealdogweight.import(params[:file])
  	redirect_to pets_path, notice: "Pet breeds Added successfully"




end
end
