require 'test_helper'

class NutritionsControllerTest < ActionController::TestCase
  setup do
    @nutrition = nutritions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nutritions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nutrition" do
    assert_difference('Nutrition.count') do
      post :create, nutrition: { ash: @nutrition.ash, calcium: @nutrition.calcium, category: @nutrition.category, cho: @nutrition.cho, cholesterol: @nutrition.cholesterol, copper: @nutrition.copper, dietaryfiber: @nutrition.dietaryfiber, edible: @nutrition.edible, energy: @nutrition.energy, fat: @nutrition.fat, food_id: @nutrition.food_id, foodname: @nutrition.foodname, iron: @nutrition.iron, magnesium: @nutrition.magnesium, manganese: @nutrition.manganese, phoshorous: @nutrition.phoshorous, potassium: @nutrition.potassium, protein: @nutrition.protein, retinol: @nutrition.retinol, selenium: @nutrition.selenium, sodium: @nutrition.sodium, vitaminA: @nutrition.vitaminA, vitaminB1: @nutrition.vitaminB1, vitaminB2: @nutrition.vitaminB2, vitaminB3: @nutrition.vitaminB3, vitaminE: @nutrition.vitaminE, weight: @nutrition.weight, zinc: @nutrition.zinc }
    end

    assert_redirected_to nutrition_path(assigns(:nutrition))
  end

  test "should show nutrition" do
    get :show, id: @nutrition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nutrition
    assert_response :success
  end

  test "should update nutrition" do
    patch :update, id: @nutrition, nutrition: { ash: @nutrition.ash, calcium: @nutrition.calcium, category: @nutrition.category, cho: @nutrition.cho, cholesterol: @nutrition.cholesterol, copper: @nutrition.copper, dietaryfiber: @nutrition.dietaryfiber, edible: @nutrition.edible, energy: @nutrition.energy, fat: @nutrition.fat, food_id: @nutrition.food_id, foodname: @nutrition.foodname, iron: @nutrition.iron, magnesium: @nutrition.magnesium, manganese: @nutrition.manganese, phoshorous: @nutrition.phoshorous, potassium: @nutrition.potassium, protein: @nutrition.protein, retinol: @nutrition.retinol, selenium: @nutrition.selenium, sodium: @nutrition.sodium, vitaminA: @nutrition.vitaminA, vitaminB1: @nutrition.vitaminB1, vitaminB2: @nutrition.vitaminB2, vitaminB3: @nutrition.vitaminB3, vitaminE: @nutrition.vitaminE, weight: @nutrition.weight, zinc: @nutrition.zinc }
    assert_redirected_to nutrition_path(assigns(:nutrition))
  end

  test "should destroy nutrition" do
    assert_difference('Nutrition.count', -1) do
      delete :destroy, id: @nutrition
    end

    assert_redirected_to nutritions_path
  end
end
