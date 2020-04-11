class TopicsController < ApplicationController

    def index
        topics = Topic.all 
        render json: topics
    end

    def show 
        topics = Topic.find(params[:id]) 
        render json: topics
    end

    def create 
        topic = Topic.create!(
            topic_name: params[:topic][:topic_name],
            description: params[:topic][:topic_description]
        )
        render json: topic
    end

    def destroy
        topic = Topic.find(params[:id])
        topic.destroy 
        render json: topic
    end
end
