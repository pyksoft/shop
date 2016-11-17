require 'rails_helper'

# Checks if user can register
RSpec.describe ChargesController, type: :controller do
  it "should get new" do
      get :new
      expect(response).to be_success
      expect(assigns(:charges)).to eq(nil)
    end
end
