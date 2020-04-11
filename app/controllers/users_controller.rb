class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end
    
    def create
        user = User.create!(
            first_name: params[:user][:first_name],
            email: params[:user][:email],
            password: params[:user][:password]
        )
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy 
        render json: user
    end
end