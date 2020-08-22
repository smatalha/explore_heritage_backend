class CommentsController < ApplicationController
    before_action :find_comment, only: [:show, :destroy, :update]

    def index
        @comments = Comment.all
        render json: @comments
    end

    def show
        @comment = Comment.find(params[:id])
        render json: @comment
    end
    def create
        @comment = Comment.create( comment_params)

        render json: @comment
    end
    def new
        @comment = Comment.new
        render json: @comment
    end

    def update
        @comment.update(comment_params)
        render json: @comment
    end

    def destroy
        @comment.destroy
        render json: @comments
    end

    private

    def comment_params
        params.require(:comment).permit!
    end

    def find_comment
        @comment = Comment.find(params[:id])
    end
end
