class SessionsController < ApplicationController 

    skip_before_action :authorized, only: [:new, :create, :welcome]

    def new
    end
  
    def create
        user = User.find_by(email: user_params[:email])
        if user && user.password == user_params[:password]
          session[:user_id] = user.id
          render json: user
      else 
        render json: "Error: Must be logged in."
      end
    end
  
    def login
        if logged_in?
            redirect_to "/"
    end
  
    def welcome
    end
  
    def page_requires_login 
    end
  
    def destroy
      session[:user_id] = nil 
      redirect_to root_path
    end
  
  end