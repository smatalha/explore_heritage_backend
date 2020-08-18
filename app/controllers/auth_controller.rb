class AuthController < ApplicationController
    def login
        # byebug
        user = User.find_by(name: params[:name])
        if user && user.authenticate(params[:password])
            render json: user
        else
            render json: {errors: 'Your login failed'}
        end
    end
end
