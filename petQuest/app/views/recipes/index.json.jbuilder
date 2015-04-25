json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :user_id, :recipe_id, :foodname, :weight
  json.url recipe_url(recipe, format: :json)
end
