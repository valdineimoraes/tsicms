require 'rails_helper'

RSpec.describe "Admins::Matrices", type: :request do
  describe "GET /admins_matrices" do
    it "works! (now write some real specs)" do
      get admins_matrices_path
      expect(response).to have_http_status(200)
    end
  end
end
