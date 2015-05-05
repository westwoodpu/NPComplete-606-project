require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe FoodsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Food. As you add validations to Food, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
     FactoryGirl.build(:food).attributes.symbolize_keys
  }

  let(:invalid_attributes) {
   {age: 5}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FoodsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all foods as @foods" do
      food = Food.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:foods)).to eq([food])
    end
  end

  describe "GET show" do
    it "assigns the requested food as @food" do
      food = Food.create! valid_attributes
      get :show, {:id => food.to_param}, valid_session
      expect(assigns(:food)).to eq(food)
    end
  end

  describe "GET new" do
    it "assigns a new food as @food" do
      get :new, {}, valid_session
      expect(assigns(:food)).to be_a_new(Food)
    end
  end

  describe "GET edit" do
    it "assigns the requested food as @food" do
      food = Food.create! valid_attributes
      get :edit, {:id => food.to_param}, valid_session
      expect(assigns(:food)).to eq(food)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Food" do
        expect {
          post :create, {:food => valid_attributes}, valid_session
        }.to change(Food, :count).by(1)
      end

      it "assigns a newly created food as @food" do
        post :create, {:food => valid_attributes}, valid_session
        expect(assigns(:food)).to be_a(Food)
        expect(assigns(:food)).to be_persisted
      end

      it "redirects to the created food" do
        post :create, {:food => valid_attributes}, valid_session
        expect(response).to redirect_to(Food.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved food as @food" do
        post :create, {:food => invalid_attributes}, valid_session
        expect(assigns(:food)).to be_a_new(Food)
      end

      it "re-renders the 'new' template" do
        post :create, {:food => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested food" do
        food = Food.create! valid_attributes
        put :update, {:id => food.to_param, :food => new_attributes}, valid_session
        food.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested food as @food" do
        food = Food.create! valid_attributes
        put :update, {:id => food.to_param, :food => valid_attributes}, valid_session
        expect(assigns(:food)).to eq(food)
      end

      it "redirects to the food" do
        food = Food.create! valid_attributes
        put :update, {:id => food.to_param, :food => valid_attributes}, valid_session
        expect(response).to redirect_to(food)
      end
    end

    describe "with invalid params" do
      it "assigns the food as @food" do
        food = Food.create! valid_attributes
        put :update, {:id => food.to_param, :food => invalid_attributes}, valid_session
        expect(assigns(:food)).to eq(food)
      end

      it "re-renders the 'edit' template" do
        food = Food.create! valid_attributes
        put :update, {:id => food.to_param, :food => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested food" do
      food = Food.create! valid_attributes
      expect {
        delete :destroy, {:id => food.to_param}, valid_session
      }.to change(Food, :count).by(-1)
    end

    it "redirects to the foods list" do
      food = Food.create! valid_attributes
      delete :destroy, {:id => food.to_param}, valid_session
      expect(response).to redirect_to(foods_url)
    end
  end

end
