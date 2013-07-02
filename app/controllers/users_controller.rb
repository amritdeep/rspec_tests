class UsersController < ApplicationController
	def new
		@user = User.new
	end
	
	def show
		@user = User.find(params[:id])
	end

	def create 
		if params[:user][:name].present? && params[:user][:password].present?
			flash[:notice] = "Thank You, You are connected with us"
		else
			redirect_to signup_url
			flash[:errors] = "Please, Fill all the requied field"
		end	
	end

end

