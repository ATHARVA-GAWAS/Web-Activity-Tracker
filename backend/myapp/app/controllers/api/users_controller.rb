class Api::UsersController < ApplicationController
    def create
      @user = User.new(user_params)
      if @user.save
        render json: { message: 'User created successfully' }, status: :created
      else
        render json: { error: 'Failed to create user' }, status: :unprocessable_entity
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:email, :password)
    end
  end
  