require 'rails_helper'

RSpec.describe PotinController, type: :controller do

  describe "GET #:id" do
    it "returns http success" do
      get ::id
      expect(response).to have_http_status(:success)
    end
  end

end
