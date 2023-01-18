class SessionsController < ApplicationController
    def new
    end

    def create
        user = SessionFacade.user_login(params[:email], params[:password])
        session[:user_id] = user.id
        redirect_to '/'
    end
end