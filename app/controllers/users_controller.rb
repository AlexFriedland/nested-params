class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def create
    raise params.inspect
    @user.create!(user_params)
    redirect_to @user
  end

  private

  def house_params
    params.require(:user).permit(:email)
  end

end
