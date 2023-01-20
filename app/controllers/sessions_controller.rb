class SessionsController < ApplicationController
  def new; end

  def create
    user = SessionFacade.user_login(email: params[:email], password: params[:password])
    session[:user_id] = user.id
    redirect_to '/'
  end

  def destroy
    session.destroy
    redirect_to '/'
  end
end
