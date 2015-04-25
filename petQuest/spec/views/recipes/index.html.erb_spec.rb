require 'rails_helper'

RSpec.describe "recipes/index", :type => :view do
  before(:each) do
    assign(:recipes, [
      Recipe.create!(
        :user_id => 1,
        :recipe_id => 2,
        :foodname => "Foodname",
        :weight => "9.99"
      ),
      Recipe.create!(
        :user_id => 1,
        :recipe_id => 2,
        :foodname => "Foodname",
        :weight => "9.99"
      )
    ])
  end

  it "renders a list of recipes" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Foodname".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
