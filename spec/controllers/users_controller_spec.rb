require 'spec_helper'

describe UsersController do
  render_views

  describe "GET 'index'" do
    before :each do
      @user = Factory :user 
      get 'index'
    end

    it "should be successful" do
      response.should be_success
    end

    describe "when not signed in" do
      it "should have sign in link" do
        response.should have_selector "a", :href => "/auth/twitter"
      end
    end

    describe "when signed in" do
      before :each do
        test_sign_in @user 
      end
      it "should have sign out link" do
        get 'index'
        response.should have_selector "a", :href => "/logout" 
      end
    end
  end
end
