require 'rails_helper'

RSpec.describe Recipe, :type => :model do
  it 'has a valid factory' do
    expect(build(:recipe)).to be_valid
end

  it 'is invalid without a food name' do 
   expect(build(:recipe, foodname: nil)).to_not be_valid
  end
end
