class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]

  # GET /foods
  # GET /foods.json
  def index
    @foods = Food.all
    @recipes = Recipe.all
  end

  # GET /foods/1
  # GET /foods/1.json
  def show
    @weight = (Nutrition.where( food_id: params[:id])).pluck :weight
  end

  # GET /foods/new
  def new
    @food = Food.new
  end

  # GET /foods/1/edit
  def edit
  end

  # POST /foods
  # POST /foods.json
  def create
    @food = Food.new(food_params)

    respond_to do |format|
      if @food.save
        format.html { redirect_to @food, notice: 'Food was successfully created.' }
        format.json { render :show, status: :created, location: @food }
      else
        format.html { render :new }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foods/1
  # PATCH/PUT /foods/1.json
  def update
    respond_to do |format|
      if @food.update(food_params)
        format.html { redirect_to @food, notice: 'Food was successfully updated.' }
        format.json { render :show, status: :ok, location: @food }
      else
        format.html { render :edit }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foods/1
  # DELETE /foods/1.json
  def destroy
    @food.destroy
    respond_to do |format|
      format.html { redirect_to foods_url, notice: 'Food was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
  	Food.import(params[:file2])
  	redirect_to foods_path, notice: "Foods Added successfully"
	end

  def add
    @food = Food.find(params[:id])
    Recipe.create( :foodname => @food.name )
    redirect_to foods_path, notice: "Add into recipe successfully"
  end

  
  #
  def getfooddata

    # this contains what has been selected in the first select box

    
    # we get the data for selectbox 2
    if params[:Food] == "Meat&Meat Products"
    @food_data = Food.where(food_category: "Meat&Meat Products")
    end

    if params[:Food] == "Poultry&Poultry Products"
    @food_data = Food.where(food_category: "Poultry&Poultry Products")
    end

    if params[:Food] == "Milk & Eggs"
    @food_data = Food.where(food_category: "Milk & Eggs")
    end

    if params[:Food] == "Fish_Shelfish&Mollusc"
    @food_data = Food.where(food_category: "Fish_Shelfish&Mollusc")
    end

    if params[:Food] == "Seed_Fat&Oils"
    @food_data = Food.where(food_category: "Seed_Fat&Oils")
    end

    if params[:Food] == "Condiments"
    @food_data = Food.where(food_category: "Condiments")
    end

    if params[:Food] == "Cereal&Cereal Products"
    @food_data = Food.where(food_category: "Cereal&Cereal Products")
    end

    if params[:Food] == "Tubers_Starches&Products"
    @food_data = Food.where(food_category: "Tubers_Starches&Products")
    end

    # we get the data for selectbox 2
    if params[:Food] == "root vegetables"
    @food_data = Food.where(food_category: "root vegetables")
    end

    if params[:Food] == "leguminous vegetables_Legume products"
    @food_data = Food.where(food_category: "leguminous vegetables_Legume products")
    end

    if params[:Food] == "solanaceous_melon&fruit vegetables"
    @food_data = Food.where(food_category: "solanaceous_melon&fruit vegetables")
    end

    if params[:Food] == "leafy_flower vegetables"
    @food_data = Food.where(food_category: "leafy_flower vegetables")
    end

    if params[:Food] == "aquatic_tuber vegetable"
    @food_data = Food.where(food_category: "aquatic_tuber vegetable")
    end

    if params[:Food] == "fungi&Algae"
    @food_data = Food.where(food_category: "fungi&Algae")
    end

    
  
  
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food
      @food = Food.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_params
      params.require(:food).permit(:name, :description, :reference_price, :cook_method, :food_category, :img_dir, :food_id)
    end
end
