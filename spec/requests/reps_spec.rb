require 'rails_helper'

RSpec.describe "Reps", :type => :request do
  describe "GET /reps" do
    it "works! (now write some real specs)" do
      get reps_path
      expect(response.status).to be(200)
    end
  end
end
