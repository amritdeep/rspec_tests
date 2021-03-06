require 'spec_helper'

describe User do
  # pending "add some examples to (or delete) #{__FILE__}"

  before { @user = User.new(name: "Exampel user", email: "example@example.com" ) }

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should be_valid }

  describe "when user is not present" do
  	before { @user.name = "" }

  	it { should_not be_valid }
  end

  describe "when name is too long" do
  	before { @user.name = "a" * 51 }

  	it { should_not be_valid }
  end

  describe "when email address is already taken" do
  	before do
  		user_with_same_email = @user.dup
  		user_with_same_email.email = @user.email.upcase
  		user_with_same_email.save
  	end

  	it { should_not be_valid }
  end

end
