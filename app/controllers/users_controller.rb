class UsersController < ApplicationController
    # before_action :find_user, only: [:show, :destroy, :update]
    before_action :authorized , only: [:stay_logged_in]

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end
    # def update
    #     @user.update(user_params)
    #     render json: @user
    # end

    def create
        user = User.create( #user_params
            name: params[:name],
            bio: params[:bio],
            email: params[:email],
            img_url: params[:img_url],
            password: params[:password],
        )
        if @user.valid?
            wristband = encode_token({user_id: @user.id})
            render json: {
                user: UserSerializer.new(@user),
                token: wristband
            }
        else
            render json: {message: "Failed to create a new user"}, status: 403
        end
    end

    def login
        @user = User.find_by(name: params[:name])
        if @user && @user.authenticate(params[:password])
        wristband = encode_token({user_id: @user.id})
        render json: {
            user: UserSerializer.new(@user),
            token: wristband
        }
        else
        render json: {message: "Incorrect username or password"}
        end
    end

    def stay_logged_in
        # @user comes from the before_action
        wristband = encode_token({user_id: @user.id})
        render json: {
            user: UserSerializer.new(@user),
            token: wristband
        }
    end
    private

    # def user_params
    #     # params.require(:user).permit!
    #     params.require(:user).permit(:name, :password, :email, :bio, :img_url)
    # end

    # def find_user
    #     @user = User.find(params[:id])
    # end
end
