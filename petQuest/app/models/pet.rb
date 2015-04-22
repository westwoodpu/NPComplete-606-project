class Pet < ActiveRecord::Base

    
    validates :gender, presence:true
    validates :body_weight, :numericality=>true, :presence=>true
    validates :pet_type, presence:true
    validates :breed, presence:true
    validates :body_condition_score, presence:true
    validates :age, :numericality=>true, :presence=>true
    
end


