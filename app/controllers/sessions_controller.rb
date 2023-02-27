class SessionsController < ApplicationController
  def new; end

  def create
    user = SessionFacade.user_login(email: params[:email], password: params[:password])
    if user.admin == 'Login failed' || user.email == 'Login failed' || user.id == 'Login failed'
      flash.now[:notice] = 'Login Failed!'
      redirect_to '/login'
    else
      session[:user_id] = user.id
      redirect_to '/'
    end
  end

  def destroy
    session.destroy
    redirect_to '/'
  end
end
