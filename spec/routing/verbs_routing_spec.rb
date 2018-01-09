require "spec_helper"

describe VerbsController do
  describe "routing" do

    it "routes to #index" do
      get("/verbs").should route_to("verbs#index")
    end

    it "routes to #new" do
      get("/verbs/new").should route_to("verbs#new")
    end

    it "routes to #show" do
      get("/verbs/1").should route_to("verbs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/verbs/1/edit").should route_to("verbs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/verbs").should route_to("verbs#create")
    end

    it "routes to #update" do
      put("/verbs/1").should route_to("verbs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/verbs/1").should route_to("verbs#destroy", :id => "1")
    end

  end
end
