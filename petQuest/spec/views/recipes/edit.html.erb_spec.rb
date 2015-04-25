require 'rails_helper'

RSpec.describe "recipes/edit", :type => :view do
  before(:each) do
    @recipe = assign(:recipe, Recipe.create!(
      :user_id => 1,
      :recipe_id => 1,
      :foodname => "MyString",
      :weight => "9.99"
    ))
  end

  it "renders the edit recipe form" do
    render

    assert_select "form[action=?][method=?]", recipe_path(@recipe), "post" do

      assert_select "input#recipe_user_id[name=?]", "recipe[user_id]"

      assert_select "input#recipe_recipe_id[name=?]", "recipe[recipe_id]"

      assert_select "input#recipe_foodname[name=?]", "recipe[foodname]"

      assert_select "input#recipe_weight[name=?]", "recipe[weight]"
    end
  end
end
