require "rails_helper"

describe GroupEventsController do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/group_events").to route_to("group_events#index")
    end

    it "routes to #show" do
      expect(get: "/group_events/1").to route_to("group_events#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/group_events").to route_to("group_events#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/group_events/1").to route_to("group_events#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/group_events/1").to route_to("group_events#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/group_events/1").to route_to("group_events#destroy", id: "1")
    end
  end
end
