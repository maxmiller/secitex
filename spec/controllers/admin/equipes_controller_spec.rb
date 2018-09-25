require 'rails_helper'

RSpec.describe Admin::EquipesController, type: :controller do

  describe "GET #admin/index" do
    it "returns http success" do
      get :admin/index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #admin/new" do
    it "returns http success" do
      get :admin/new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #admin/show" do
    it "returns http success" do
      get :admin/show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #admin/edit" do
    it "returns http success" do
      get :admin/edit
      expect(response).to have_http_status(:success)
    end
  end

end
