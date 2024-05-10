# app/controllers/api/my_users_controller.rb

class Api::MyUsersController < ApplicationController
  def create
    @user = MyUser.new(user_params)
    if @user.save
      render json: { user: @user }, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:my_user).permit(:email, :password)
  end
end

  