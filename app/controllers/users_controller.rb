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

    def create
        # user = User.new(user_params)
        user = User.new(
            name: params[:name],
            password: params[:password],
            email: params[:email],
            bio: params[:bio],
            img_url: params[:img_url],
        )
        if user.save
            render json: user
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    private

    def user_params
        params.require(:user).permit!
    end

    def find_user
        @user = User.find(params[:id])
    end
end
