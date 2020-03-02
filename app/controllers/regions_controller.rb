class RegionsController < ApplicationController
  def show
    @region = Region.find(params[:id])
    @areas = Area.where(region_id: params[:id])
  end
end
