# app/controllers/users_controller.rb
class UsersController < ApplicationController
    def new
      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
      if @user.save
        # User saved successfully
        redirect_to root_path, notice: "User created successfully"
      else
        # Validation failed, render the new user form again
        render :new
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:email, :password)
    end
  end
  