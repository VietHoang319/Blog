class UsersController < ApplicationController
  def new 
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to root_path, status: :see_other
    else
      render :new
    end
  end

  private def user_params
    params.require(:user).permit :name, :password, :password_confirmation
  end
end
