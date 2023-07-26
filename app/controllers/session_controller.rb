class SessionController < ApplicationController
  def new
    render :new
  end

  def create
    user = User.find_by(name: params[:session][:name].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:current_user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
  end
end
