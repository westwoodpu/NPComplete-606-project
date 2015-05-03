require 'rails_helper'

RSpec.describe Pet, :type => :model do
  it 'has a valid factory' do
    expect(build(:pet)).to be_valid
end

  it 'is invalid without a pet type' do 
   expect(build(:pet, age: nil)).to_not be_valid
  end
end
