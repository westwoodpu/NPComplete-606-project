require 'rails_helper'

RSpec.describe "recipes/new", :type => :view do
  before(:each) do
    assign(:recipe, Recipe.new(
      :user_id => 1,
      :recipe_id => 1,
      :foodname => "MyString",
      :weight => "9.99"
    ))
  end

  it "renders new recipe form" do
    render

    assert_select "form[action=?][method=?]", recipes_path, "post" do

      assert_select "input#recipe_user_id[name=?]", "recipe[user_id]"

      assert_select "input#recipe_recipe_id[name=?]", "recipe[recipe_id]"

      assert_select "input#recipe_foodname[name=?]", "recipe[foodname]"

      assert_select "input#recipe_weight[name=?]", "recipe[weight]"
    end
  end
end
