class ReservationsController < ApplicationController
     

     def index
        if session[:user_id].blank?
          redirect_to "/login"
        else
          @user = User.find_by(id: session[:user_id])
          @reservations = User.find_by(username: @user.username)
        end
      end

      def create 

        # if user not logged in and reservation doesnt save direct to login
        # if user logs in direct them to view all their reservations
        
        if session[:user_id].blank?
            redirect_to "/login"
        else
            @reservation = Reservation.new(reservation_params)
        if @reservation.save
            redirect_to reservations_path
        else
            render :new
        end
        end
      end

      def edit 
        @reservation = Reservation.find(params[:id])
        @user = User.find_by(id: session[:user_id:])
    end

    def new 
        @reservation = Reservation.new
    end

    def update
        @reservation = Reservation.find(params[:id])
        @user = User.find_by(id: session[:user_id:])
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

    def new_review
        @reservation = Reservation.find_by(id: params["id"])
        @restaurant = Restaurant.find_by(id: @reservation.restaurant_id)
        if session[:user_id].blank?
          redirect_to "/login"
        elsif @reservation.user_id != session[:user_id]
          flash[:danger] = "This reservation does not belong to you!"
          redirect_to "/reservations"
        else
          render 'new_review'
        end

        private

    def reservation_params
        params.require(:reservation).permit(:date, :time, :review, :user_id, :restaurant_id)
    end
end
