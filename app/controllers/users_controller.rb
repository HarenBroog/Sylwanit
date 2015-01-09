class UsersController < ApplicationController
  expose(:user, attributes: :user_params)
  expose(:users) { User.sorted }

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end
end
