class ApplicationController < ActionController::Base

    helper_method :current_user, :logged_in?

    def current_user
        user_id = session[:user_id]
        user_id && User.find(user_id)
    end
    
      def authenticate!
        unless current_user
          flash[:info] = "You have to be logged in to do that!"
          redirect_to users_path
        end
      end

      def log_in(user)
        session[:user_id] = user.id
      end
end
