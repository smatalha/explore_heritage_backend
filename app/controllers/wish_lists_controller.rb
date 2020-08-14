class WishListsController < ApplicationController
    def index
        @wish_lists = WishList.all
        render json: @wish_lists
    end

    def show
        @wish_list = WishList.find(params[:id])
        render json: @wish_list
    end
end
