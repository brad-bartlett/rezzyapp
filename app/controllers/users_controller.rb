class UsersController < ApplicationController
    #  before_action :authenticate!, except: [:index, :show]

    def index 
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        @reservation = Reservation.all
        @restaurants = Restaurant.all
    end

    def new 
        @user = User.new
    end

    def create 
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def edit 
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
       if @user.update(user_params)
        redirect_to user_path(@user)
       else 
        render :edit
       end
    end

    def destroy 
        @user = User.find(params[:id])
         if @user.destroy
            redirect_to users_path
         else 
            render :edit
         end
         
    end

    private

    def user_params
        params.require(:user).permit(:name, :username, :password)
    end
end