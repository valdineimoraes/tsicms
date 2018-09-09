require "rails_helper"

RSpec.describe Admins::MatricesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/admins/matrices").to route_to("admins/matrices#index")
    end

    it "routes to #new" do
      expect(:get => "/admins/matrices/new").to route_to("admins/matrices#new")
    end

    it "routes to #show" do
      expect(:get => "/admins/matrices/1").to route_to("admins/matrices#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admins/matrices/1/edit").to route_to("admins/matrices#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/admins/matrices").to route_to("admins/matrices#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admins/matrices/1").to route_to("admins/matrices#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admins/matrices/1").to route_to("admins/matrices#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admins/matrices/1").to route_to("admins/matrices#destroy", :id => "1")
    end
  end
end
