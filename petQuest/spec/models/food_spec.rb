require 'rails_helper'

RSpec.describe Food, :type => :model do
  it 'has a valid factory' do
    expect(build(:food)).to be_valid
end

  it 'is invalid without a food name' do 
   expect(build(:food, name: nil)).to_not be_valid
  end
end
