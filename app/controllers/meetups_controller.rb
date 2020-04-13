class MeetupsController < ApplicationController
    def index 
        meetups = Meetup.all 
        render json: meetups.to_json(:include => [:users, :comments, :topic])
    end

    def show 
        meetup = Meetup.find(params[:id])
        render json: meetup.to_json(:include => [:users, :comments])
    end

    def create 
        meetup = Meetup.create!(meetup_params)
        render json: meetup
    end

    def edit 
        meetup = Meetup.find(params[:id])
    end
    
    def update
        meetup = Meetup.find(params[:id])
        user = User.find(meetup_params[:user_ids])
        topic = Topic.find(meetup_params[:topic_id])
        comment = Comment.find(meetup_params[:comment_ids])

        if meetup.valid?
            meetup.users << user unless meetup.users.include? user 
            meetup.comments << comment unless meetup.comments.incliude? comment
            meetup.topic = topic 
        end
    end

    def destroy 
        meetup = Meetup.find(params[:id])
        meetup.destroy 
        render json: meetup
    end

    private

    def meetup_params 
        params.require(:meetup).permit(:topic_id,  :comment_ids, :user_ids, :title, :date, :time, :location)
    end
end
