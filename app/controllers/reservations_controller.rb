class ReservationsController < ApplicationController
     before_action :authenticate!

    def index 
         
        @reservations = Reservation.all
        
    end

    def show
        @reservation = Reservation.find(params[:id])
        @users = User.all
        @restaurants = Restaurant.all
    end

    def new 
        @reservation = Reservation.new
    end

    def create 

        @user = User.find_by(id: params[:reservation][:user_id])
        @reservation = Reservation.new(reservation_params)
        if @reservation.save
            redirect_to user_path(@user)
        else
            render :new
        end

        

    end

    def edit 
        @reservation = Reservation.find(params[:id])
    end

    def update
        @reservation = Reservation.find(params[:id])
       if @reservation.update(reservation_params)
        redirect_to reservation_path(@reservation)
       else 
        render :edit
       end
    end

    def destroy 
        @reservation = Reservation.find(params[:id])
         if @reservation.destroy
            redirect_to reservations_path
         else 
            render :edit
         end
    end

    private

    def reservation_params
        params.require(:reservation).permit(:time, :name, :restaurant, :review, :restaurant_id, :user_id)
    end
end
