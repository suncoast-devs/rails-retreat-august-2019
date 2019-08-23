class SessionsController < ApplicationController
  # GET /login
  def new
  end

  # POST /login
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to user, notice: "Welcome back, #{user.name}!"
    else
      flash[:notice] = "We couldn't log you in. Sorry."
      session[:user_id] = nil
      render "new"
    end
  end

  # DELETE /logout
  def destroy
    session[:user_id] = nil
    redirect_to "/"
  end
end
