require "rails_helper"

RSpec.describe RepsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/reps").to route_to("reps#index")
    end

    it "routes to #new" do
      expect(:get => "/reps/new").to route_to("reps#new")
    end

    it "routes to #show" do
      expect(:get => "/reps/1").to route_to("reps#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/reps/1/edit").to route_to("reps#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/reps").to route_to("reps#create")
    end

    it "routes to #update" do
      expect(:put => "/reps/1").to route_to("reps#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/reps/1").to route_to("reps#destroy", :id => "1")
    end

  end
end
