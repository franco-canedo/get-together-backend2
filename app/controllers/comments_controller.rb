class CommentsController < ApplicationController

    def index
        comments = Comment.all 
        render json: comments
    end

    def show 
        comment = Comment.find(params[:id])
        render json: comment
    end

    def create 
        comment = Comment.create!(
            content: params[:comment][:content],
            user_id: params[:user_id],
            meetup_id: params[:meetup_id]
        )
        render json: comment
    end

    def destroy 
        comment = Comment.find(params[:id])
        comment.destroy 
        render json: comment
    end

    # private

    # def comment_params
    #     params.require(:comment).permit(:user_id, :meetup_id, :content)
    # end
end
