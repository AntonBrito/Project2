require "rails_helper"

RSpec.describe AppoitmentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/appoitments").to route_to("appoitments#index")
    end

    it "routes to #new" do
      expect(:get => "/appoitments/new").to route_to("appoitments#new")
    end

    it "routes to #show" do
      expect(:get => "/appoitments/1").to route_to("appoitments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/appoitments/1/edit").to route_to("appoitments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/appoitments").to route_to("appoitments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/appoitments/1").to route_to("appoitments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/appoitments/1").to route_to("appoitments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/appoitments/1").to route_to("appoitments#destroy", :id => "1")
    end

  end
end
