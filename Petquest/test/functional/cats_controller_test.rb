require 'test_helper'

class CatsControllerTest < ActionController::TestCase
  setup do
    @cat = cats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cat" do
    assert_difference('Cat.count') do
      post :create, cat: { Activity: @cat.Activity, Age: @cat.Age, Anthelmintic: @cat.Anthelmintic, Body: @cat.Body, Body: @cat.Body, Condition: @cat.Condition, Flea: @cat.Flea, Flooding: @cat.Flooding, Gender: @cat.Gender, History: @cat.History, Level: @cat.Level, Pet: @cat.Pet, Score: @cat.Score, Sterilization: @cat.Sterilization, Time: @cat.Time, Time: @cat.Time, Time: @cat.Time, Type: @cat.Type, Vaccination: @cat.Vaccination, Vitro: @cat.Vitro, Weight: @cat.Weight, name: @cat.name }
    end

    assert_redirected_to cat_path(assigns(:cat))
  end

  test "should show cat" do
    get :show, id: @cat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cat
    assert_response :success
  end

  test "should update cat" do
    put :update, id: @cat, cat: { Activity: @cat.Activity, Age: @cat.Age, Anthelmintic: @cat.Anthelmintic, Body: @cat.Body, Body: @cat.Body, Condition: @cat.Condition, Flea: @cat.Flea, Flooding: @cat.Flooding, Gender: @cat.Gender, History: @cat.History, Level: @cat.Level, Pet: @cat.Pet, Score: @cat.Score, Sterilization: @cat.Sterilization, Time: @cat.Time, Time: @cat.Time, Time: @cat.Time, Type: @cat.Type, Vaccination: @cat.Vaccination, Vitro: @cat.Vitro, Weight: @cat.Weight, name: @cat.name }
    assert_redirected_to cat_path(assigns(:cat))
  end

  test "should destroy cat" do
    assert_difference('Cat.count', -1) do
      delete :destroy, id: @cat
    end

    assert_redirected_to cats_path
  end
end
