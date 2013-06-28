require 'spec_helper'

describe "Pages" do
  describe "GET /pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get root_url
      response.status.should be(200)
    end

    #let(:base_title){ "RspectTest" }

    subject { page }

    describe "Home page" do 
    	before { visit home_url }
    	it { should have_selector('h1', text: 'Home') }

    end

    describe "Help page" do
    	before { visit help_url}
    	it { should have_selector('h1', text: 'Help') }
    end 

    describe "About page" do
    	before { visit about_url }
    	it { should have_selector('h1', text: 'About Us') }
    end

    describe "Contact Page" do
    	before { visit contact_url }
    	it { should have_selector('h1', text: 'Contact') }

    	# it "should have title 'Contact'" do
    	# 	visit contact_url
    	# 	page.should have_selector('title', text: "'#{:base_title}'| Contact")
    	# end

    end

  end
end
