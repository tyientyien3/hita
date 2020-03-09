class RegionsController < ApplicationController
  def show
    @region = Region.find(params[:id])
    @questions = @region.questions
    @users = @region.users
    @areas = Area.where(region_id: params[:id])
  end
end
