class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]

  # GET /foods
  # GET /foods.json
  def index
    @foods = Food.paginate(:page => params[:page], :per_page =>10)
@food = Food.new
    @recipes = Recipe.all
  @recipe=Recipe.new

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
unless recipe.weight.nil?
@Meatproportion=recipe.weight+@Meatproportion
end
when 'Poultry&Poultry Products'
unless recipe.weight.nil?
@Poultryproportion=recipe.weight+@Poultryproportion
end
when 'Milk & Eggs'
unless recipe.weight.nil?
@Milkeggproportion=recipe.weight+@Milkeggproportion
end
when 'Fish_Shelfish&Mollusc'
unless recipe.weight.nil?
@Fishshellfishproportion=recipe.weight+@Fishshellfishproportion
end
when 'Seed_Fat&Oils'
unless recipe.weight.nil?
@Seedfatoilproportion=recipe.weight+@Seedfatoilproportion
end
when 'Condiments'
unless recipe.weight.nil?
@Condimentsproportion=recipe.weight+@Condimentsproportion
end
when 'Cereal And Cereal Products'
unless recipe.weight.nil?
@Cerealproportion=recipe.weight+@Cerealproportion
end
when 'Tubers_Starches&Products'
unless recipe.weight.nil?
@Tubersproportion=recipe.weight+@Tubersproportion
end
when 'root vegetables'
unless recipe.weight.nil?
@Rootvegetablesproportion=recipe.weight+@Rootvegetablesproportion
end
when 'leguminous vegetables_Legume products'
unless recipe.weight.nil?
@Leguminousvegetablesproportion=recipe.weight+@Leguminousvegetablesproportion
end
when 'solanaceous_melon&fruit vegetables'
unless recipe.weight.nil?
@Solanaceousvegetablesproportion=recipe.weight+@Solanaceousvegetablesproportion
end
when 'leafy_flower vegetables'
unless recipe.weight.nil?
@Leafyflowervegetablesproportion=recipe.weight+@Leafyflowervegetablesproportion
end
when 'aquatic_tuber vegetable'
unless recipe.weight.nil?
@Aquaticproportion=recipe.weight+@Aquaticproportion
end
when 'Fungi&Algae'
unless recipe.weight.nil?
@Fungiproportion=recipe.weight+@Fungiproportion
end
end




#adding up individual nutrients
unless @Food.vitaminA.nil?
@Vitamin_A=@Vitamin_A+(@Food.vitaminA*recipe.weight)
end
=begin
@Vitamin_D=@Vitamin_D+(@Food.vitaminD*recipe.weight)
=end
unless @Food.zinc.nil? or recipe.weight.nil?
@Zinc=@Zinc+(@Food.zinc*recipe.weight)
end

unless @Food.energy.nil? or recipe.weight.nil?
@Energy=@Energy+(@Food.energy*recipe.weight)
end

unless @Food.protein.nil? or recipe.weight.nil?
@Protein=@Protein+(@Food.protein*recipe.weight)
end

unless @Food.fat.nil? or recipe.weight.nil?
@Fat=@Fat+(@Food.fat*recipe.weight)
end

unless @Food.cho.nil? or recipe.weight.nil?
@CHO=@CHO+(@Food.cho*recipe.weight)
end


unless @Food.dietaryfiber.nil? or recipe.weight.nil?
@Dietaryfiber=@Dietaryfiber+(@Food.dietaryfiber*recipe.weight)
end

unless @Food.ash.nil? or recipe.weight.nil?
@Ash=@Ash+@Food.ash+(@Food.ash*recipe.weight)
end
unless @Food.vitaminE.nil?
  @Vitamin_E=@Vitamin_E+(@Food.vitaminE*recipe.weight)
end
  unless @Food.vitaminB1.nil?

@Vitamin_B1=@Vitamin_B1+(@Food.vitaminB1*recipe.weight)
end
unless @Food.calcium.nil?

@Calcium=@Calcium+(@Food.calcium*recipe.weight)
end
unless @Food.phosphorous.nil?

@Phosphorous=@Phosphorous+(@Food.phosphorous*recipe.weight)
end
unless @Food.potassium.nil?

@Potassium=@Potassium+(@Food.potassium*recipe.weight)
end
unless @Food.sodium.nil?

@Sodium=@Sodium+(@Food.sodium*recipe.weight)
end
unless @Food.magnesium.nil?

@Magnesium=@Magnesium+(@Food.magnesium*recipe.weight)
end
=begin

@Cholesterol=@Cholesterol+(@Food.cholesterol*recipe.weight)
@Retinol=@Retinol+(@Food.retinol*recipe.weight)
@Vitamin_K=@Vitamin_K+(@Food.vitaminK*recipe.weight)
@Vitamin_D=@Vitamin_D+(@Food.vitaminD*recipe.weight)
@Vitamin_C=@Vitamin_C+(@Food.vitaminC*recipe.weight)
@Vitamin_B2=@Vitamin_B2+(@Food.vitaminB2*recipe.weight)
@Vitamin_B3=@Vitamin_B3+(@Food.vitaminB3*recipe.weight)
@Vitamin_B6=@Vitamin_B6+(@Food.vitaminB6*recipe.weight)
@Vitamin_B12=@Vitamin_B12+(@Food.vitaminB12*recipe.weight)
@Folic_acid=@Folic_acid+(@Food.folicacid*recipe.weight)
@Choline=@Choline+(@Food.choline*recipe.weight)
@Biotin=@Biotin+(@Food.biotin*recipe.weight)
@Vitamin_B5=@Vitamin_B5+(@Food.vitaminb5*recipe.weigh)
@Chloride=@Chloride+(@Food.chloride*recipe.weight)
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
unless recipe.weight.nil? 
@Totalweight=@Totalweight+recipe.weight
end
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
@Phenylalanine_tyrosine=@Phenylalanine_tyrosine/@Totalweight
@Phenylalanine=@Phenylalanine/@Totalweight
@Threonine=@Threonine/@Totalweight
@Tryptophan=@Tryptophan/@Totalweight
@Valine=@Valine/@Totalweight
@Arginine=@Arginine/@Totalweight
@Histidine=@Histidine/@Totalweight
@Linoleic_acid=@Linoleic_acid/@Totalweight
@Arachidonic_acid=@Arachidonic_acid/@Totalweight

#################################################
# Cat: all constant numbers for 3500KCal ME
@protein_3500ME_min_kitten = 300.to_f
@protein_3500ME_max_adultcat = 260.to_f

@fat_3500ME_min_kitten = 90.to_f
@fat_3500ME_min_adultcat = 90.to_f

@retinol_3500ME_min_kitten = 2700.to_f
@retinol_3500ME_min_adultcat = 1500.to_f
@retinol_3500ME_max = 225000.to_f

@vitamin_k_3500ME_min_kitten = 100.to_f
@vitamin_k_3500ME_min_adultcat = 100.to_f

@vitamin_d_3500ME_min_kitten = 18.75.to_f
@vitamin_d_3500ME_min_adultcat = 12.5.to_f
@vitamin_d_3500ME_max = 250.to_f

@vitamin_e_3500ME_min_kitten = 30.to_f
@vitamin_e_3500ME_min_adultcat = 30.to_f

@vitamin_c_3500ME_min_kitten = 0.to_f
@vitamin_c_3500ME_min_adultcat = 0.to_f

@vitamin_b1_3500ME_min_kitten = 5.to_f
@vitamin_b1_3500ME_min_adultcat = 5.to_f

@vitamin_b2_3500ME_min_kitten = 4.to_f
@vitamin_b2_3500ME_min_adultcat = 4.to_f

@vitamin_b3_3500ME_min_kitten = 60.to_f
@vitamin_b3_3500ME_min_adultcat = 60.to_f

@vitamin_b6_3500ME_min_kitten = 4.to_f
@vitamin_b6_3500ME_min_adultcat = 4.to_f

@vitamin_b12_3500ME_min_kitten = 20.to_f
@vitamin_b12_3500ME_min_adultcat = 20.to_f

@folic_acid_3500ME_min_kitten = 800.to_f
@folic_acid_3500ME_min_adultcat = 800.to_f

@choline_3500ME_min_kitten = 2400.to_f
@choline_3500ME_min_adultcat = 2400.to_f

@biotin_3500ME_min_kitten = 70.to_f
@biotin_3500ME_min_adultcat = 70.to_f

@vitamin_b5_3500ME_min_kitten = 5.to_f
@vitamin_b5_3500ME_min_adultcat = 5.to_f

@calcium_3500ME_min_kitten = 10000.to_f
@calcium_3500ME_min_adultcat = 6000.to_f

@phosphorous_3500ME_min_kitten = 8000.to_f
@phosphorous_3500ME_min_adultcat = 5000.to_f

@potassium_3500ME_min_kitten = 6000.to_f
@potassium_3500ME_min_adultcat = 6000.to_f

@sodium_3500ME_min_kitten = 2000.to_f
@sodium_3500ME_min_adultcat = 2000.to_f

@chloride_3500ME_min_kitten = 3000.to_f
@chloride_3500ME_min_adultcat = 3000.to_f

@magnesium_3500ME_min_kitten = 800.to_f
@magnesium_3500ME_min_adultcat = 400.to_f

@iron_3500ME_min_kitten = 80.to_f
@iron_3500ME_min_adultcat = 80.to_f

@zinc_3500ME_min_kitten = 75.to_f
@zinc_3500ME_min_adultcat = 75.to_f
@zinc_3500ME_max = 2000.to_f

@selenium_3500ME_min_kitten = 100.to_f
@selenium_3500ME_min_adultcat = 100.to_f

@copper_3500ME_min_kitten = 15.to_f
@copper_3500ME_min_adultcat = 5.to_f

@manganese_3500ME_min_kitten = 7.5.to_f
@manganese_3500ME_min_adultcat = 7.5.to_f

@taurine_3500ME_min_kitten = 2000.to_f
@taurine_3500ME_min_adultcat = 2000.to_f

@isoleucine_3500ME_min_kitten = 5200.to_f
@isoleucine_3500ME_min_adultcat = 5200.to_f

@leucine_3500ME_min_kitten = 12500.to_f
@leucine_3500ME_min_adultcat = 12500.to_f

@lysine_3500ME_min_kitten = 12000.to_f
@lysine_3500ME_min_adultcat = 8300.to_f

@methionine_cystine_3500ME_min_kitten = 11000.to_f
@methionine_cystine_3500ME_min_adultcat = 11000.to_f

@methionine_3500ME_min_kitten = 6200.to_f
@methionine_3500ME_min_adultcat = 6200.to_f
@methionine_3500ME_max = 15000.to_f

@phenylalanine_tyrosine_3500ME_min_kitten = 8800.to_f
@phenylalanine_tyrosine_3500ME_min_adultcat = 8800.to_f

@phenylalanine_3500ME_min_kitten = 4200.to_f
@phenylalanine_3500ME_min_adultcat = 4200.to_f

@threonine_3500ME_min_kitten = 7300.to_f
@threonine_3500ME_min_adultcat = 7300.to_f

@tryptophan_3500ME_min_kitten = 2500.to_f
@tryptophan_3500ME_min_adultcat = 1600.to_f

@valine_3500ME_min_kitten = 6200.to_f
@valine_3500ME_min_adultcat = 6200.to_f

@arginine_3500ME_min_kitten = 12500.to_f
@arginine_3500ME_min_adultcat = 10400.to_f

@histidine_3500ME_min_kitten = 3100.to_f
@histidine_3500ME_min_adultcat = 3100.to_f

@linoleic_acid_3500ME_min_kitten = 5000.to_f
@linoleic_acid_3500ME_min_adultcat = 5000.to_f

@arachidonic_acid_3500ME_min_kitten = 200.to_f
@arachidonic_acid_3500ME_min_adultcat = 200.to_f

# Dog: all constant numbers for 3500KCal ME
@vitamin_e_3500ME_min_puppy = 50.to_f
@vitamin_e_3500ME_min_adultdog = 50.to_f

@vitamin_b1_3500ME_min_puppy = 1.to_f
@vitamin_b1_3500ME_min_adultdog = 1.to_f

@calcium_3500ME_min_puppy = 10000.to_f
@calcium_3500ME_min_adultdog = 6000.to_f
@calcium_3500ME_max_dog = 25000.to_f

@phosphorous_3500ME_min_puppy = 8000.to_f
@phosphorous_3500ME_min_adultdog = 5000.to_f
@phosphorous_3500ME_max_dog = 16000.to_f

@potassium_3500ME_min_puppy = 6000.to_f
@potassium_3500ME_min_adultdog = 6000.to_f

@sodium_3500ME_min_puppy = 3000.to_f
@sodium_3500ME_min_adultdog = 600.to_f

@magnesium_3500ME_min_puppy = 400.to_f
@magnesium_3500ME_min_adultdog = 400.to_f
@magnesium_3500ME_max_dog = 400.to_f

# A_ME_protein : protain weight regrading to the actual ME
@pet = Pet.find(4)
case @pet.pet_type
when "Cat"
  @A_ME_result = (@Protein * 4 + @Fat * 8.5.to_f + (@CHO - @Dietaryfiber) * 4).round(2)
  if @pet.age.to_f < 1
    @A_ME_vitamin_e  = (@vitamin_e_3500ME_min_kitten / 3500) * @A_ME_result
    @A_ME_vitamin_b1  = (@vitamin_b1_3500ME_min_kitten / 3500) * @A_ME_result
    @A_ME_calcium  = @calcium_3500ME_min_kitten / 3500 * @A_ME_result
    @A_ME_phosphorous = @phosphorous_3500ME_min_kitten / 3500 * @A_ME_result
    @A_ME_potassium  = @potassium_3500ME_min_kitten / 3500 * @A_ME_result
    @A_ME_sodium  = @sodium_3500ME_min_kitten / 3500 * @A_ME_result
    @A_ME_magnesium  = @magnesium_3500ME_min_kitten / 3500 * @A_ME_result
    
  else
    @A_ME_vitamin_e  = @vitamin_e_3500ME_min_adultcat / 3500 * @A_ME_result
    @A_ME_vitamin_b1  = @vitamin_b1_3500ME_min_adultcat / 3500 * @A_ME_result
    @A_ME_calcium  = @calcium_3500ME_min_adultcat / 3500 * @A_ME_result
    @A_ME_phosphorous = @phosphorous_3500ME_min_adultcat / 3500 * @A_ME_result
    @A_ME_potassium  = @potassium_3500ME_min_adultcat / 3500 * @A_ME_result
    @A_ME_sodium  = @sodium_3500ME_min_adultcat / 3500 * @A_ME_result
    @A_ME_magnesium  = @magnesium_3500ME_min_adultcat / 3500 * @A_ME_result
  end

 
when "Dog"
  @A_ME_result = (@Protein * 4 + @Fat * 9 + (@CHO - @Dietaryfiber) * 4).round(2)
  @A_ME_calcium_max  = @calcium_3500ME_max_dog / 3500 * @A_ME_result
  @A_ME_phosphorous_max  = @phosphorous_3500ME_max_dog / 3500 * @A_ME_result
  @A_ME_magnesium  = @magnesium_3500ME_max_dog / 3500 * @A_ME_result

  if @pet.age.to_f < 1
    @A_ME_vitamin_e  = (@vitamin_e_3500ME_min_puppy / 3500).to_f * @A_ME_result
    @A_ME_vitamin_b1  = (@vitamin_b1_3500ME_min_puppy / 3500).to_f * @A_ME_result
    @A_ME_calcium  = @calcium_3500ME_min_puppy / 3500 * @A_ME_result
    @A_ME_phosphorous = @phosphorous_3500ME_min_puppy / 3500 * @A_ME_result
    @A_ME_potassium  = @potassium_3500ME_min_puppy / 3500 * @A_ME_result
    @A_ME_sodium  = @sodium_3500ME_min_puppy / 3500 * @A_ME_result
    @A_ME_magnesium  = @magnesium_3500ME_min_puppy / 3500 * @A_ME_result 
    
  else
    @A_ME_vitamin_e  = @vitamin_e_3500ME_min_adultdog / 3500 * @A_ME_result
    @A_ME_vitamin_b1  = @vitamin_b1_3500ME_min_adultdog / 3500 * @A_ME_result
    @A_ME_calcium  = @calcium_3500ME_min_adultdog / 3500 * @A_ME_result
    @A_ME_phosphorous = @phosphorous_3500ME_min_adultdog / 3500 * @A_ME_result
    @A_ME_potassium  = @potassium_3500ME_min_adultdog / 3500 * @A_ME_result
    @A_ME_sodium  = @sodium_3500ME_min_adultdog / 3500 * @A_ME_result
    @A_ME_magnesium  = @magnesium_3500ME_min_adultdog / 3500 * @A_ME_result
  
  end
else "No such pet type found"

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

