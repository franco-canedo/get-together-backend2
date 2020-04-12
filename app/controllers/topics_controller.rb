class TopicsController < ApplicationController

    def index
        topics = Topic.all 
        render json: topics.to_json(:include => [:meetups, :users])
    end

    def show 
        topic = Topic.find(params[:id]) 
        render json: topic.to_json(:include => [:meetups, :users])
    end

    def create 
        topic = Topic.create!(
            topic_name: params[:topic][:topic_name],
            description: params[:topic][:topic_description]
        )
        render json: topic
    end

    def edit 
        topic = Topic.find(params[:id])
    end
    
    def update
        topic = Topic.find(params[:id])
        user = User.find(topic_params[:user_ids])
        meetup = Meetup.find(topic_params[:meetup_ids])

        if topic.valid?
            topic.users << user unless topic.users.include? user 
            topic.meetups << meetup unless topic.meetups.include? meetup
        end
    end

    def destroy
        topic = Topic.find(params[:id])
        topic.destroy 
        render json: topic
    end

    private

    def topic_params
        params.require(:topic).permit(:meetup_ids, :user_ids, :topic_name, :description)
    end
end
