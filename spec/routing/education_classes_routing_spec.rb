require "rails_helper"

RSpec.describe EducationClassesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/education_classes").to route_to("education_classes#index")
    end

    it "routes to #new" do
      expect(:get => "/education_classes/new").to route_to("education_classes#new")
    end

    it "routes to #show" do
      expect(:get => "/education_classes/1").to route_to("education_classes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/education_classes/1/edit").to route_to("education_classes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/education_classes").to route_to("education_classes#create")
    end

    it "routes to #update" do
      expect(:put => "/education_classes/1").to route_to("education_classes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/education_classes/1").to route_to("education_classes#destroy", :id => "1")
    end

  end
end
