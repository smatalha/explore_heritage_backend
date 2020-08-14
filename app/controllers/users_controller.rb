class UsersController < ApplicationController
    before_action :find_user, only: [:show, :destroy, :update]

    def index
        @users = User.all
        render json: @users
    end
    
    def show
        # @user = User.find(params[:id])
        render json: @user
    end
    def update
        @user.update(user_params)
        render json: @user
    end

    private

    def user_params
        params.require(:user).permit!
    end

    def find_user
        @user = User.find(params[:id])
    end
end
