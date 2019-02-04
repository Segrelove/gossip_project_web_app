require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do

  describe "GET #first_name" do
    it "returns http success" do
      get :first_name
      expect(response).to have_http_status(:success)
    end
  end

end
