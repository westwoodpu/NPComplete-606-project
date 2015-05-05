@A_ME_result = (@Protein * 4 +@Fat * 9 + (@CHO - @Dietaryfiber) * 4).round(2)

# Cat: all constant numbers for 3500KCal ME
@protein_3500ME_min_kitten = 300
@protein_3500ME_max_adultcat = 260

@fat_3500ME_min_kitten = 90
@fat_3500ME_min_adultcat = 90

@retinol_3500ME_min_kitten = 2700
@retinol_3500ME_min_adultcat = 1500
@retinol_3500ME_max = 225000

@vitamin_k_3500ME_min_kitten = 100
@vitamin_k_3500ME_min_adultcat = 100

@vitamin_d_3500ME_min_kitten = 18.75.to_f
@vitamin_d_3500ME_min_adultcat = 12.5.to_f
@vitamin_d_3500ME_max = 250

@vitamin_e_3500ME_min_kitten = 30
@vitamin_e_3500ME_min_adultcat = 30

@vitamin_c_3500ME_min_kitten = 0
@vitamin_c_3500ME_min_adultcat = 0

@vitamin_b1_3500ME_min_kitten = 5
@vitamin_b1_3500ME_min_adultcat = 5

@vitamin_b2_3500ME_min_kitten = 4
@vitamin_b2_3500ME_min_adultcat = 4

@vitamin_b3_3500ME_min_kitten = 60
@vitamin_b3_3500ME_min_adultcat = 60

@vitamin_b6_3500ME_min_kitten = 4
@vitamin_b6_3500ME_min_adultcat = 4

@vitamin_b12_3500ME_min_kitten = 20
@vitamin_b12_3500ME_min_adultcat = 20

@folic_acid_3500ME_min_kitten = 800
@folic_acid_3500ME_min_adultcat = 800

@choline_3500ME_min_kitten = 2400
@choline_3500ME_min_adultcat = 2400

@biotin_3500ME_min_kitten = 70
@biotin_3500ME_min_adultcat = 70

@vitamin_b5_3500ME_min_kitten = 5
@vitamin_b5_3500ME_min_adultcat = 5

@calcium_3500ME_min_kitten = 10000
@calcium_3500ME_min_adultcat = 6000

@phosphorous_3500ME_min_kitten = 8000
@phosphorous_3500ME_min_adultcat = 5000

@potassium_3500ME_min_kitten = 6000
@potassium_3500ME_min_adultcat = 6000

@sodium_3500ME_min_kitten = 2000
@sodium_3500ME_min_adultcat = 2000

@chloride_3500ME_min_kitten = 3000
@chloride_3500ME_min_adultcat = 3000

@magnesium_3500ME_min_kitten = 800
@magnesium_3500ME_min_adultcat = 400

@iron_3500ME_min_kitten = 80
@iron_3500ME_min_adultcat = 80

@zinc_3500ME_min_kitten = 75
@zinc_3500ME_min_adultcat = 75
@zinc_3500ME_max = 2000

@selenium_3500ME_min_kitten = 100
@selenium_3500ME_min_adultcat = 100

@copper_3500ME_min_kitten = 15
@copper_3500ME_min_adultcat = 5

@manganese_3500ME_min_kitten = 7.5.to_f
@manganese_3500ME_min_adultcat = 7.5.to_f

@taurine_3500ME_min_kitten = 2000
@taurine_3500ME_min_adultcat = 2000

@isoleucine_3500ME_min_kitten = 5200
@isoleucine_3500ME_min_adultcat = 5200

@leucine_3500ME_min_kitten = 12500
@leucine_3500ME_min_adultcat = 12500

@lysine_3500ME_min_kitten = 12000
@lysine_3500ME_min_adultcat = 8300

@methionine_cystine_3500ME_min_kitten = 11000
@methionine_cystine_3500ME_min_adultcat = 11000

@methionine_3500ME_min_kitten = 6200
@methionine_3500ME_min_adultcat = 6200
@methionine_3500ME_max = 15000

@phenylalanine_tyrosine_3500ME_min_kitten = 8800
@phenylalanine_tyrosine_3500ME_min_adultcat = 8800

@phenylalanine_3500ME_min_kitten = 4200
@phenylalanine_3500ME_min_adultcat = 4200

@threonine_3500ME_min_kitten = 7300
@threonine_3500ME_min_adultcat = 7300

@tryptophan_3500ME_min_kitten = 2500
@tryptophan_3500ME_min_adultcat = 1600

@valine_3500ME_min_kitten = 6200
@valine_3500ME_min_adultcat = 6200

@arginine_3500ME_min_kitten = 12500
@arginine_3500ME_min_adultcat = 10400

@histidine_3500ME_min_kitten = 3100
@histidine_3500ME_min_adultcat = 3100

@linoleic_acid_3500ME_min_kitten = 5000
@linoleic_acid_3500ME_min_adultcat = 5000

@arachidonic_acid_3500ME_min_kitten = 200
@arachidonic_acid_3500ME_min_adultcat = 200

# A_ME_protein : protain weight regrading to the actual ME
@pet = Pet.find(1)
case @pet.pet_type
when "Cat"
  if @pet.age < 1
    @A_ME_vitamin_e  = @vitamin_e_3500ME_min_kitten / 3500 * @A_ME_result
    @A_ME_vitamin_b1  = @vitamin_b1_3500ME_min_kitten / 3500 * @A_ME_result
    @A_ME_vitamin_calcium  = @calcium_3500ME_min_kitten / 3500 * @A_ME_result
    @A_ME_vitamin_phosphorus = @phosphorus_3500ME_min_kitten / 3500 * @A_ME_result
    @A_ME_vitamin_potassium  = @potassium_3500ME_min_kitten / 3500 * @A_ME_result
    @A_ME_vitamin_sodium  = @sodium_3500ME_min_kitten / 3500 * @A_ME_result
    @A_ME_vitamin_magnesium  = @magnesium_3500ME_min_kitten / 3500 * @A_ME_result
    
  else
    @A_ME_vitamin_e  = @vitamin_e_3500ME_min_adultcat / 3500 * @A_ME_result
    @A_ME_vitamin_b1  = @vitamin_b1_3500ME_min_adultcat / 3500 * @A_ME_result
    @A_ME_vitamin_calcium  = @calcium_3500ME_min_adultcat / 3500 * @A_ME_result
    @A_ME_vitamin_phosphorous = @phosphorous_3500ME_min_adultcat / 3500 * @A_ME_result
    @A_ME_vitamin_potassium  = @potassium_3500ME_min_adultcat / 3500 * @A_ME_result
    @A_ME_vitamin_sodium  = @sodium_3500ME_min_adultcat / 3500 * @A_ME_result
    @A_ME_vitamin_magnesium  = @magnesium_3500ME_min_adultcat / 3500 * @A_ME_result
  end

=begin 
when "Dog"
  if @pet.age < 1
  else
  end
else "No such pet type found"
=end
end



