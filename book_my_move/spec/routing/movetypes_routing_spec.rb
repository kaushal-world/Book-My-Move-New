require "spec_helper"

describe MovetypesController do
  describe "routing" do

    it "routes to #index" do
      get("/movetypes").should route_to("movetypes#index")
    end

    it "routes to #new" do
      get("/movetypes/new").should route_to("movetypes#new")
    end

    it "routes to #show" do
      get("/movetypes/1").should route_to("movetypes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/movetypes/1/edit").should route_to("movetypes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/movetypes").should route_to("movetypes#create")
    end

    it "routes to #update" do
      put("/movetypes/1").should route_to("movetypes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/movetypes/1").should route_to("movetypes#destroy", :id => "1")
    end

  end
end
