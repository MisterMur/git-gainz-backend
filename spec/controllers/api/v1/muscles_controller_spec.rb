require 'rails_helper'

RSpec.describe Api::V1::MusclesController, type: :controller do

  describe "GET #name:string" do
    it "returns http success" do
      get :name:string
      expect(response).to have_http_status(:success)
    end
  end

end
