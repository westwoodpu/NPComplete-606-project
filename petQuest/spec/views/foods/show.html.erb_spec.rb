require 'rails_helper'

RSpec.describe "foods/show", :type => :view do
  before(:each) do
    @food = assign(:food, Food.create!(
      :name => "Name",
      :description => "MyText",
      :reference_price => "9.99",
      :cook_method => "Cook Method",
      :food_category => "Food Category",
      :img_dir => "Img Dir",
      :food_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Cook Method/)
    expect(rendered).to match(/Food Category/)
    expect(rendered).to match(/Img Dir/)
    expect(rendered).to match(/1/)
  end
end
