require 'spec_helper'

describe "UserPages" do
	
  # describe "GET /user_pages" do
  #   it "works! (now write some real specs)" do
  #     # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
  #     get user_pages_index_path
  #     response.status.should be(200)
  #   end
  # end

  subject { page }

  describe "Signup Page" do
  	before { visit signup_url }

  	it { should have_selector('h1', text: 'Sign Up') }
  end

end
