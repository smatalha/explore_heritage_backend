class WishListsController < ApplicationController
    before_action :find_wish_list, only: [:show, :destroy, :update]

    def index
        @wish_lists = WishList.all
        render json: @wish_lists
    end

    def show
        @wish_list = WishList.find(params[:id])
        render json: @wish_list
    end

    def create
        @wish_list = Wish_list.create(wish_list_params)
        render json: @wish_list
    end
    def new
        @wish_list = Wish_list.new
        render json: @wish_list
    end
        private

    def wish_list_params
        params.require(:wish_list).permit!
    end

    def find_wish_list
        @wish_list = Wish_list.find(params[:id])
    end
end
