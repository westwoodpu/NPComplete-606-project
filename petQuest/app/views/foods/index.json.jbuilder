json.array!(@foods) do |food|
  json.extract! food, :id, :name, :description, :reference_price, :cook_method, :food_category, :img_dir, :food_id
  json.url food_url(food, format: :json)
end
