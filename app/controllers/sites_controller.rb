class SitesController < ApplicationController
    def index
        @sites = Site.all
        render json: @sites
    end

    def show
        render json: @site
    end
end
