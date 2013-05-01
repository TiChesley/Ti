class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @pin = @user.pins.page(params[:page]).per_page(20)
  end
end
