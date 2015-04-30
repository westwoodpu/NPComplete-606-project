require 'csv'

class PetsController < ApplicationController
    def index
    require 'csv'    

    csv_text = File.read('csv_files/idealcatweight.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
    Idealcatweight.create!(row.to_hash)
    end    
    csv_text = File.read('csv_files/idealbreedweight.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
    Idealdogweight.create!(row.to_hash)
    end

    @pets = Pet.all
    end
    
	def new
        @pet=Pet.new
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

  def me
    @pet = Pet.find(params[:id])
    @me_result = (100*(@pet.body_weight.to_f**0.67.to_f)*6.732.to_f*(2.718.to_f**(-0.189.to_f*@pet.body_weight.to_f/4)-0.66.to_f)).ceil
    # decimal numbers like 0.67, 6.732 will be considered as string rather than number if input directly
    # thererfore, we use .to_f to convert it into fraction then compute
    # ** = ^
    # .ceil means round up to nearest integer. If round up to tenth decimal, then it should be (number*10).ceil/10.0 
  end

  def getdata

    # this contains what has been selected in the first select box

    Rails.logger.debug("Params: #{params[:pet][:pet_type]}")
    Rails.logger.debug('test3')
    # we get the data for selectbox 2
    if params[:pet][:pet_type] == "Dog"
    @data_for_select2 = Idealdogweight.all
    end
    if params[:pet][:pet_type] == "Cat"
    @data_for_select2 = Idealcatweight.all
    end
    Rails.logger.debug("Params: #{@data_select2.inspect}")

    
    
    if params[:pet][:pet_type] != ""

    # render an array in JSON containing arrays like:
    #[[:id1, :name1], [:id2, :name2]]
    render :json => @data_for_select2.map{|c| [c.english_name, c.english_name]}
    else

    render :json => [['',''],['','']]
    end
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
  	  
      params.require(:pet).permit(:name, :gender, :age, :pet_type, :body_condition_score, :body_weight, :breed, :activity)
	
  end

     
end

