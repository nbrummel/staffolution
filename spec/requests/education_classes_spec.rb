require 'rails_helper'

RSpec.describe "EducationClasses", :type => :request do
  describe "GET /education_classes" do
    it "works! (now write some real specs)" do
      get education_classes_path
      expect(response.status).to be(200)
    end
  end
end
