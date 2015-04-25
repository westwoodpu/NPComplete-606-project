require 'rails_helper'

RSpec.describe "foods/new", :type => :view do
  before(:each) do
    assign(:food, Food.new(
      :name => "MyString",
      :description => "MyText",
      :reference_price => "9.99",
      :cook_method => "MyString",
      :food_category => "MyString",
      :img_dir => "MyString",
      :food_id => 1
    ))
  end

  it "renders new food form" do
    render

    assert_select "form[action=?][method=?]", foods_path, "post" do

      assert_select "input#food_name[name=?]", "food[name]"

      assert_select "textarea#food_description[name=?]", "food[description]"

      assert_select "input#food_reference_price[name=?]", "food[reference_price]"

      assert_select "input#food_cook_method[name=?]", "food[cook_method]"

      assert_select "input#food_food_category[name=?]", "food[food_category]"

      assert_select "input#food_img_dir[name=?]", "food[img_dir]"

      assert_select "input#food_food_id[name=?]", "food[food_id]"
    end
  end
end
