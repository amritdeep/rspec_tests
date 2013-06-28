require 'spec_helper'

describe "Pages" do
  describe "GET /pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get page_home_path
      response.status.should be(200)
    end

    let(:base_title){ "RspectTest" }

    describe "Home page" do 
    	it "should have some h1 'Home'" do
    		visit '/page/home'
    		page.should have_selector('h1', text: 'Home')
   		end
    end

    describe "Help page" do
    	it "should have some h1 'Help''" do
    		visit '/page/help'
    		page.should have_selector('h1', text: 'Help')
    	end
    end 

    describe "About page" do
    	it "should have some h1 'About Us'" do
    		visit '/page/about'
    		page.should have_selector('h1', text: "About Us")
    	end
    end

  end
end
