class UsersController < ApplicationController
  def create
    user = UserFacade.new_user(email: params[:email],
                               password: params[:password],
                               password_confirmation: params[:password],
                               admin: params[:admin])
    session[:id] = user.id
    redirect_to '/'
  end

  def new
  end
end
