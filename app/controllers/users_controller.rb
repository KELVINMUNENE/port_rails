class UsersController < ApplicationController
		def show
			@user = User.find(params[:id])
		end

		def new
			@user = user.new
		end

		def create
			@user = User.find(params[:user])
			if @user.save
				UserMail.signup_confirmation(@user).deliver
				redirect_to @user, notice: "signed up successful"
			else 
				render :new
			end
		end	
end