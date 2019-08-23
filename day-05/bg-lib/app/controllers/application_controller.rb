class ApplicationController < ActionController::Base
  include Pagy::Backend

  def authenticate!
    unless current_user
      redirect_to login_path, notice: "You must sign in first."
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  helper_method :current_user
end
