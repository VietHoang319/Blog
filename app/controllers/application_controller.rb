class ApplicationController < ActionController::Base
  include SessionHelper

  before_action :require_login

  def require_login
    unless logged_in?
      redirect_to login_path
    end
  end
end
