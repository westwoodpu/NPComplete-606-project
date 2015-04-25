require 'rails_helper'

RSpec.describe "recipes/show", :type => :view do
  before(:each) do
    @recipe = assign(:recipe, Recipe.create!(
      :user_id => 1,
      :recipe_id => 2,
      :foodname => "Foodname",
      :weight => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Foodname/)
    expect(rendered).to match(/9.99/)
  end
end
