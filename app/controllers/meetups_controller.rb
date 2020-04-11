class MeetupsController < ApplicationController
    def index 
        meetups = Meetup.all 
        render json: meetups.to_json(:include => [:users, :comments])
    end

    def show 
        meetup = Meetup.find(params[:id])
        render json: meetup
    end

    def create 
        meetup = Meetup.create!(meetup_params)
        render json: meetup
    end

    def destroy 
        meetup = Meetup.find(params[:id])
        meetup.destroy 
        render json: meetup
    end

    private

    def meetup_params 
        params.require(:meetup).permit(:topic_id,  :comment_ids, :title, :date, :time, :location, :attendees)
    end
end
