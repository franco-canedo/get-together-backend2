class UsersController < ApplicationController

    def index
        users = User.all
        render json: users.to_json(:include => [:topics, :meetups, :comments])
    end

    def show
        user = User.find(params[:id])
        render json: user.to_json(:include => [:topics, :meetups, :comments])
    end
    
    def create
        user = User.create!(user_params)
        render json: user
    end

    def edit
        user = User.find(params[:id])
    end
    
    def update
        user = User.find(params[:id])
        topic = Topic.find(user_params[:topic_ids])
        meetup = User.find(user_params[:meetup_ids])
        comment = Comment.find(user_params[:comment_ids])

        if user.valid?
            user.topics << topic unless user.topics.include? topic 
            user.meetups << meetup unless user.meetups.include? meetup 
            user.comments << comment unless user.comments.include? comment 
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy 
        render json: user
    end

    private 

    def user_params
        params.require(:user).permit(:topic_ids, :meetup_ids, :comment_ids, :first_name, :email, :password)
    end
end