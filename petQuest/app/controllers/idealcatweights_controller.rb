class IdealcatweightsController < ApplicationController

def index

end
def import


  	Idealcatweight.import(params[:file])
  	redirect_to pets_path, notice: "Pet breeds Added successfully"




end

end
