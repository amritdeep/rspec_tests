require 'spec_helper'

describe "UserPages" do
	
  # describe "GET /user_pages" do
  #   it "works! (now write some real specs)" do
  #     # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
  #     get user_pages_index_path
  #     response.status.should be(200)
  #   end
  # end

  #print page.html

  subject { page }

  describe "Signup Page" do
    before { visit signup_url }
   #  it { should have_selector('h1', text: 'Sign Up') }
   fill_in "Name"
   fill_in "Eamil"
  end

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_url(user) }

    it { should have_selector('strong', text: "Name") }
    it { should have_content(user.name) }
    it { should have_selector('strong', text: "Email") }
    it { should have_content(user.email) }
  end

end
