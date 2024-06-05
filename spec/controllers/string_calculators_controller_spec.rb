require 'rails_helper'

RSpec.describe StringCalculatorsController, type: :controller do
  describe "GET #new" do
    it "renders the new template" do
      get :new
      expect(response).to render_template(:new)
    end
  end
end
