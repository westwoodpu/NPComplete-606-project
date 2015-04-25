require 'rails_helper'

RSpec.describe "foods/index", :type => :view do
  before(:each) do
    assign(:foods, [
      Food.create!(
        :name => "Name",
        :description => "MyText",
        :reference_price => "9.99",
        :cook_method => "Cook Method",
        :food_category => "Food Category",
        :img_dir => "Img Dir",
        :food_id => 1
      ),
      Food.create!(
        :name => "Name",
        :description => "MyText",
        :reference_price => "9.99",
        :cook_method => "Cook Method",
        :food_category => "Food Category",
        :img_dir => "Img Dir",
        :food_id => 1
      )
    ])
  end

  it "renders a list of foods" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Cook Method".to_s, :count => 2
    assert_select "tr>td", :text => "Food Category".to_s, :count => 2
    assert_select "tr>td", :text => "Img Dir".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
