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
    # def update
    #     @user.update(user_params)
    #     render json: @user
    # end

    def create
        # user = User.new(user_params)
        user = User.create(
            name: params[:name],
            bio: params[:bio],
            email: params[:email],
            img_url: params[:img_url],
            password: params[:password],
        )
        # byebug
        if user
            render json: user, status: 201
        else
            render json: {errors: user.errors.full_messages}, status: 403
        end
    end

    def login
        # byebug
        @user = User.find_by(name: params[:name])
        if @user && @user.authenticate(params[:password])
            render json: @user
        else
            render json: {errors: user.errors.full_messages}
        end
    end
    private

    # def user_params
    #     # params.require(:user).permit!
    #     params.require(:user).permit(:name, :password, :email, :bio, :img_url)
    # end

    def find_user
        @user = User.find(params[:id])
    end
end
