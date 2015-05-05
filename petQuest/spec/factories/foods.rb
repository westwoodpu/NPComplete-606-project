FactoryGirl.define do
  factory :food do
    name "Salmon"
description "This is Salmon"
reference_price "1.99"
cook_method "Grill or sushimi"
food_category "Fish"
img_dir "http://www.atasteofkoko.com/baked-herbed-salmon"
food_id 1
  end

end
