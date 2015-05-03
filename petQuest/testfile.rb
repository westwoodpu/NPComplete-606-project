@pet = Pet.find(params[:id])
    case @pet.pet_type
      when "Cat" 
            if @pet.age.to_f < 1 # it is kitten
              @weight_min = Idealcatweights.find_by(english_name: @pet.pet_type).min_kg || "no such cat found"
              @weight_max = Idealcatweights.find_by(english_name: @pet.pet_type).max_kg || "no such cat found"
              @R_me_min = (100 * (@pet.body_weight.to_f ** 0.67.to_f) * 6.732.to_f * (2.718.to_f ** (-0.189.to_f*@pet.body_weight.to_f/@weight_min)-0.66.to_f)).ceil
              @R_me_max = (100 * (@pet.body_weight.to_f ** 0.67.to_f) * 6.732.to_f * (2.718.to_f ** (-0.189.to_f*@pet.body_weight.to_f/@weight_max)-0.66.to_f)).ceil
              @me_result = (0.5.to_f * (@R_me_min + @R_me_max)).ceil

   
          else # it is adult cat
            case @pet.body_condition_score
            when "Normal" # slim-medium adult cat
              @me_result = (100 * @pet.body_weight ** 0.67).ceil
            when "Fat"
              @me_result = (130 * @pet.body_weight ** 0.4).ceil
            end
          end

      when "Dog"
        if @pet.age.to_f < 1 # it is puppy
          @weight_min = Idealdogweights.find_by(english_name: @pet.pet_type).min_kg || "no such dog found"
              @weight_max = Idealdogweights.find_by(english_name: @pet.pet_type).max_kg || "no such dog found"
              @R_me_min = (130 * (@pet.body_weight.to_f ** 0.75.to_f) * 3.2.to_f * (2.718.to_f ** (-0.87.to_f * @pet.body_weight.to_f / @weight_min) - 0.66.to_f)).ceil
              @R_me_max = (130 * (@pet.body_weight.to_f ** 0.75.to_f) * 3.2.to_f * (2.718.to_f ** (-0.87.to_f * @pet.body_weight.to_f / @weight_max) - 0.66.to_f)).ceil
              @me_result = (0.5.to_f * (@R_me_min + @R_me_max)).ceil

        else # it is adult dog
          if @pet.age.to_f > 7 || @pet.activity == "Inactive"
            @me_result = (95 * @pet.body_weight ** 0.75.to_f).ceil
          elsif @pet.body_weight <= 23 # small-medium adult dog
            @me_result = (180 * @pet.body_weight ** 0.75.to_f).ceil
          else # large adult dog
            @me_result = (200 * @pet.body_weight ** 0.75.to_f).ceil
          end
        end
      else 
        puts "no such pet type found"
      end
    # decimal numbers like 0.67, 6.732 will be considered as string rather than number if input directly
    # thererfore, we use .to_f to convert it into fraction then compute
    # ** = ^
    # .ceil means round up to nearest integer. If round up to tenth decimal, then it should be (number*10).ceil/10.0 .rb