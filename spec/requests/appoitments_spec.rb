require 'rails_helper'

RSpec.describe "Appoitments", type: :request do
  describe "GET /appoitments" do
    it "works! (now write some real specs)" do
      get appoitments_path
      expect(response).to have_http_status(200)
    end
  end
end
