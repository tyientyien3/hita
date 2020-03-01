class HomesController < ApplicationController
  def index
    @country_id = params[:country_id]
    @region_id = params[:region_id]
    @area_id = params[:area_id]
  end
end
