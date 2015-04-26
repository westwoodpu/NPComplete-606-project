class NutritionsController < ApplicationController
  before_action :set_nutrition, only: [:show, :edit, :update, :destroy]

  # GET /nutritions
  # GET /nutritions.json
  def index
    @nutritions = Nutrition.paginate(:page => params[:page], :per_page =>10)
  end

  # GET /nutritions/1
  # GET /nutritions/1.json
  def show
  end

  # GET /nutritions/new
  def new
    @nutrition = Nutrition.new
  end

  # GET /nutritions/1/edit
  def edit
  end

  # POST /nutritions
  # POST /nutritions.json
  def create
    @nutrition = Nutrition.new(nutrition_params)

    respond_to do |format|
      if @nutrition.save
        format.html { redirect_to @nutrition, notice: 'Nutrition was successfully created.' }
        format.json { render :show, status: :created, location: @nutrition }
      else
        format.html { render :new }
        format.json { render json: @nutrition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nutritions/1
  # PATCH/PUT /nutritions/1.json
  def update
    respond_to do |format|
      if @nutrition.update(nutrition_params)
        format.html { redirect_to @nutrition, notice: 'Nutrition was successfully updated.' }
        format.json { render :show, status: :ok, location: @nutrition }
      else
        format.html { render :edit }
        format.json { render json: @nutrition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nutritions/1
  # DELETE /nutritions/1.json
  def destroy
    @nutrition.destroy
    respond_to do |format|
      format.html { redirect_to nutritions_url, notice: 'Nutrition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    Nutrition.import(params[:file])
    redirect_to nutritions_path, notice: "nutritions added successfully"
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nutrition
      @nutrition = Nutrition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nutrition_params
      params.require(:nutrition).permit(:category, :foodname, :weight, :edible, :energy, :protein, :fat, :cho, :dietaryfiber, :ash, :cholesterol, :vitaminA, :retinol, :vitaminE, :vitaminB1, :vitaminB2, :vitaminB3, :calcium, :phoshorous, :potassium, :sodium, :magnesium, :iron, :zinc, :selenium, :copper, :manganese, :food_id)
    end
end
