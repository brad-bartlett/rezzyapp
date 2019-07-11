class SessionsController < ApplicationController

  def new
  end

  def create
      user = User.find_by(username: params[:username])
      if user.present?
        if user.authenticate(params[:password])
          session[:user_id] = user.id
          flash[:success] = "Welcome back, #{user.name}"
          redirect_to "/"
        else
          flash[:danger] = "Check the username or password you entered!"
          redirect_to "/login"
        end
      else
        flash[:danger] = "Check the username or password you entered!"
        redirect_to "/login"
      end
    end

    def destroy
      session[:user_id] = nil
      redirect_to root_path
  end
end