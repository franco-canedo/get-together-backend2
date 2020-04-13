class ApplicationController < ActionController::API

        before_action :authorized
        # helper_method :current_user 
        # helper_method :logged_in?
        
        def index
        end
    
        def current_user
            User.find_by(id: session[:user_id])
        end
    
        def logged_in?
            !current_user.nil?
        end
    
        def authorized 
            # redirect_to '/login' unless logged_in?
        end
  
end