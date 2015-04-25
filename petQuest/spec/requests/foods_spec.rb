require 'rails_helper'

RSpec.describe "Foods", :type => :request do
  describe "GET /foods" do
    it "works! (now write some real specs)" do
      get foods_path
      expect(response.status).to be(200)
    end
  end
end
