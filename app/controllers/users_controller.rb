class UsersController < ApplicationController
  expose(:user, attributes: :user_params)
  expose(:users)

  def index
  end

  def update
    user.save
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end
end
