class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]

  # GET /foods
  # GET /foods.json
  def index
    @foods = Food.paginate(:page => params[:page], :per_page =>10)
@food = Food.new
    @recipes = Recipe.all

  end

  # GET /foods/1
  # GET /foods/1.json
  def show
    @food_nutrition   = (Nutrition.find_by( food_id: @food.food_id))
  end

  # GET /foods/new
  def new
    @food = Food.new
  end

  # GET /foods/1/edit
  def edit
  end
 
  def search
 
  @word= params[:q]
  Rails.logger.debug(@word)

  @foodresults=Food.where('name ILIKE ?',"%#{@word}%").paginate(:page=>params[:page])




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
  	Food.import(params[:file])
  	redirect_to foods_path, notice: "Foods Added successfully"
	end

  def add
    @food = Food.find(params[:id])
    Recipe.create( :foodname => @food.name )
    redirect_to foods_path, notice: "Add into recipe successfully"
  end

   def calculate

#initialize the totals for nutrients
@Energy=0
@Protein=0
@Fat=0
@CHO=0
@Dietaryfiber=0
@Ash=0
@Cholesterol=0
@Retinol=0
@Vitamin_A=0
@Vitamin_K=0
@Vitamin_D=0
@Vitamin_E=0
@Vitamin_C=0
@Vitamin_B1=0
@Vitamin_B2=0
@Vitamin_B3=0
@Vitamin_B6=0
@Vitamin_B12=0
@Folic_acid=0
@Choline=0
@Biotin=0
@Vitamin_B5=0
@Calcium=0
@Phosphorous=0
@Potassium=0
@Sodium=0
@Chloride=0
@Magnesium=0
@Iron=0
@Zinc=0.00
@Selenium=0
@Copper=0
@Manganese=0
@Iodine=0
@Taurine=0
@Isoleucine=0
@Leucine=0
@Lysine=0
@Methionine_cystine=0
@Methionine=0
@Phenylalanine_tyrosine=0
@Phenylalanine=0
@Threonine=0
@Tryptophan=0
@Valine=0
@Arginine=0
@Histidine=0
@Linoleic_acid=0
@Arachidonic_acid=0
@Totalweight=0

#ingredients proportion values
@Meatproportion=0
@Poultryproportion=0
@Milkeggproportion=0
@Fishshellfishproportion=0
@Seedfatoilproportion=0
@Condimentsproportion=0
@Cerealproportion=0
@Tubersproportion=0
@Rootvegetablesproportion=0
@Leguminousvegetablesproportion=0
@Solanaceousvegetablesproportion=0
@Leafyflowervegetablesproportion=0
@Aquaticproportion=0
@Fungiproportion=0






Recipe.all.each do |recipe|

@Food=Nutrition.find_by(foodname:recipe.foodname)


#Add up ingredient proportions
Rails.logger.debug(@Food)
case @Food.category

when 'Meat&Meat Products'
@Meatproportion=recipe.weight+@Meatproportion
when 'Poultry And Poultry Products'
@Poultryproportion=recipe.weight+@Poultryproportion

when 'Milk And Eggs'
@Milkeggproportion=recipe.weight+@Milkeggproportion
when 'Fish Shelfish And Mollusc'
@Fishshellfishproportion=recipe.weight+@Fishshellfishproportion
when 'Seed Fat And Oils'
@Seedfatoilproportion=recipe.weight+@Seedfatoilproportion
when 'Condiments'
@Condimentsproportion=recipe.weight+@Condimentsproportion
when 'Cereal And Cereal Products'
@Cerealproportion=recipe.weight+@Cerealproportion
when 'Tubers Starches And Products'
@Tubersproportion=recipe.weight+@Tubersproportion
when 'Root Vegetables'
@Rootvegetablesproportion=recipe.weight+@Rootvegetablesproportion
when 'Leguminous Vegetables And Legume Products'
@Leguminousvegetablesproportion=recipe.weight+@Leguminousvegetablesproportion
when 'Solanaceous Melon And Fruit Vegetables'
@Solanaceousvegetablesproportion=recipe.weight+@Solanaceousvegetablesproportion
when 'Leafy Flower Vegetables'
@Leafyflowervegetablesproportion=recipe.weight+@Leafyflowervegetablesproportion
when 'Aquatic And Tuber Vegetable'
@Aquaticproportion=recipe.weight+@Aquaticproportion
when 'Fungi And Algae'
@Fungiproportion=recipe.weight+@Fungiproportion
end




#adding up individual nutrients
=begin
@Vitamin_A=@Vitamin_A+(@Food.vitaminA*recipe.weight)
@Vitamin_D=@Vitamin_D+(@Food.vitaminD*recipe.weight)
=end
unless @Food.zinc.nil?
@Zinc=@Zinc+(@Food.zinc*recipe.weight)
end

unless @Food.energy.nil?
@Energy=@Energy+(@Food.energy*recipe.weight)
end

unless @Food.protein.nil?
@Protein=@Protein+(@Food.protein*recipe.weight)
end

unless @Food.fat.nil?
@Fat=@Fat+(@Food.fat*recipe.weight)
end

unless @Food.cho.nil?
@CHO=@CHO+(@Food.cho*recipe.weight)
end


unless @Food.dietaryfiber.nil?
@Dietaryfiber=@Dietaryfiber+(@Food.dietaryfiber*recipe.weight)
end

unless @Food.ash.nil?
@Ash=@Ash+@Food.ash+(@Food.ash*recipe.weight)
end
=begin
@Cholesterol=@Cholesterol+(@Food.cholesterol*recipe.weight)

@Retinol=@Retinol+(@Food.retinol*recipe.weight)
@Vitamin_K=@Vitamin_K+(@Food.vitaminK*recipe.weight)
@Vitamin_D=@Vitamin_D+(@Food.vitaminD*recipe.weight)
@Vitamin_E=@Vitamin_E+(@Food.vitaminE*recipe.weight)
@Vitamin_C=@Vitamin_C+(@Food.vitaminC*recipe.weight)
@Vitamin_B1=@Vitamin_B1+(@Food.vitaminB1*ecipe.weight)
@Vitamin_B2=@Vitamin_B2+(@Food.vitaminB2*recipe.weight)
@Vitamin_B3=@Vitamin_B3+(@Food.vitaminB3*recipe.weight)
@Vitamin_B6=@Vitamin_B6+(@Food.vitaminB6*recipe.weight)
@Vitamin_B12=@Vitamin_B12+(@Food.vitaminB12*recipe.weight)
@Folic_acid=@Folic_acid+(@Food.folicacid*recipe.weight)
@Choline=@Choline+(@Food.choline*recipe.weight)
@Biotin=@Biotin+(@Food.biotin*recipe.weight)
@Vitamin_B5=@Vitamin_B5+(@Food.vitaminb5*recipe.weigh)
@Calcium=@Calcium+(@Food.calcium*recipe.weight)
@Phosphorous=@Phosphorous+(@Food.phosphorous*recipe.weight)
@Potassium=@Potassium+(@Food.potassium*recipe.weight)
@Sodium=@Sodium+(@Food.sodium*recipe.weight)
@Chloride=@Chloride+(@Food.chloride*recipe.weight)
@Magnesium=@Magnesium+(@Food.magnesium*recipe.weight)
@Iron=@Iron+@Food.iron+(@Food.iron*recipe.weight)
@Zinc=@Zinc+@Food.zinc+(@Food.zinc*recipe.weight)
@Selenium=@Selenium+(@Food.selenium*recipe.weight)
@Copper=@Copper+(@Food.copper*recipe.weight)
@Manganese=@Manganese+(@Food.manganese*recipe.weight)
@Iodine=@Iodine+(@Food.iodine*recipe.weight)
@Taurine=@Taurine+(@Food.taurine*recipe.weight)
@Isoleucine=@Isoleucine+(@Food.isoleucine*recipe.weight)
@Leucine=@Leucine+(@Food.leucine*recipe.weight)
@Lysine=@Lysine+(@Food.lysine*recipe.weight)
@Methionine_cystine=@Methionine_cystine+(@Food.methionine_cystine*recipe.weight)
@Methionine=@Methionine+(@Food.methionine*recipe.weight)
@Phenylalanine_tyrosine=@Phenylaline_tyrosine+(@Food.phenylalaninetyrosine*recipe.weight)
@Phenylalanine=@Phenylaline+(@Food.phenylalanine*recipe.weight)
@Threonine=@Threonine+(@Food.threonine*recipe.weight)
@Tryptophan=@Tryptophan+(@Food.tryptophan*recipe.weight)
@Valine=@Valine+(@Food.valine*recipe.weight)
@Arginine=@Arginine+(@Food.arginine*recipe.weight)
@Histidine=@Histine+(@Food.histidine*recipe.weight)
@Linoleic_acid=@Linoleic_acid+(@Food.linoleicacid*recipe.weight)
@Arachidonic_acid=@Arachidonic_acid+(@Food.arachidonicacid*recipe.weight)
=end
@Totalweight=@Totalweight+recipe.weight
end

#final totals for proportions
@Meatproportion=(@Meatproportion/@Totalweight)*100.0
@Poultryproportion=(@Poultryproportion/@Totalweight)*100.0
@Milkeggproportion=(@Milkeggproportion/@Totalweight)*100.0
@Fishshellfishproportion=(@Fishshellfishproportion/@Totalweight)*100.0
@Seedfatoilproportion=(@Seedfatoilproportion/@Totalweight)*100.0
@Condimentsproportion=(@Condimentsproportion/@Totalweight)*100.0
@Cerealproportion=(@Cerealproportion/@Totalweight)*100.0
@Tubersproportion=(@Tubersproportion/@Totalweight)*100.0
@Rootvegetablesproportion=(@Rootvegetablesproportion/@Totalweight)*100.0
@Leguminousvegetablesproportion=(@Leguminousvegetablesproportion/@Totalweight)*100.0
@Solanaceousvegetablesproportion=(@Solanaceousvegetablesproportion/@Totalweight)*100.0
@Leafyflowervegetablesproportion=(@Leafyflowervegetablesproportion/@Totalweight)*100.0
@Aquaticproportion=(@Aquaticproportion/@Totalweight)*100.0
@Fungiproportion=(@Fungiproportion/@Totalweight)*100.0




#final totals for each nutrient
@Vitamin_A=@Vitamin_A/@Totalweight
@Vitamin_D=@Vitamin_D/@Totalweight
@Zinc=@Zinc/@Totalweight

@Methionine/@Totalweight

@Energy=@Energy/@Totalweight
@Protein=@Protein/@Totalweight
@Fat=@Fat/@Totalweight
@CHO=@CHO/@Totalweight
@Dietaryfiber=@Dietaryfiber/@Totalweight
@Ash=@Ash/@Totalweight
=begin
@Cholesterol=@Cholesterol/@Totalweight

@Retinol=@Retinol/@Totalweight
@Vitamin_K=@Vitamin_K/@Totalweight

@Vitamin_E=@Vitamin_E/@Totalweight
@Vitamin_C=@Vitamin_C/@Totalweight
@Vitamin_B1=@Vitamin_B1/@Totalweight
@Vitamin_B2=@Vitamin_B2/@Totalweight
@Vitamin_B3=@Vitamin_B3/@Totalweight
@Vitamin_B6=@Vitamin_B6/@Totalweight
@Vitamin_B12=@Vitamin_B12/@Totalweight
@Folic_acid=@Folic_acid/@Totalweight
@Choline=@Choline/@Totalweight
@Biotin=@Biotin/@Totalweight
@Vitamin_B5=@Vitamin_B5/@Totalweight
@Calcium=@Calcium/@Totalweight
@Phosphorous=@Phosphorous/@Totalweight
@Potassium=@Potassium/@Totalweight
@Sodium=@Sodium/@Totalweight
@Chloride=@Chloride/@Totalweight
@Magnesium=@Magnesium/@Totalweight
@Iron=@Iron+@Food.iron/@Totalweight
@Zinc=@Zinc+@Food.zinc/@Totalweight
@Selenium=@Selenium/@Totalweight
@Copper=@Copper/@Totalweight
@Manganese=@Manganese/@Totalweight
@Iodine=@Iodine/@Totalweight
@Taurine=@Taurine/@Totalweight
@Isoleucine=@Isoleucine/@Totalweight
@Leucine=@Leucine/@Totalweight
@Lysine=@Lysine/@Totalweight
@Methionine_cystine=@Methionine_cystine/@Totalweight
@Methionine=@Methionine/@Totalweight
@Phenylalanine_tyrosine=@Phenylaline_tyrosine/@Totalweight
@Phenylalanine=@Phenylaline/@Totalweight
@Threonine=@Threonine/@Totalweight
@Tryptophan=@Tryptophan/@Totalweight
@Valine=@Valine/@Totalweight
@Arginine=@Arginine/@Totalweight
@Histidine=@Histine/@Totalweight
@Linoleic_acid=@Linoleic_acid/@Totalweight
@Arachidonic_acid=@Arachidonic_acid/@Totalweight
=end
 @A_ME_result = (@Protein * 4 +@Fat * 9 + (@CHO - @Dietaryfiber) * 4).round(2)
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
