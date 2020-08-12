class SitesController < ApplicationController
    before_action :find_site, only: [:show, :destroy, :update]

    def index
        @sites = Site.all
        render json: @sites
    end

    def show
        render json: @site
    end

    def update
        @site.update(site_params)
        render json: @site
    end

    private

    def site_params
        params.require(:site).permit!
    end

    def find_site
        @site = Site.find(params[:id])
    end
end
