class RegionsController < ApplicationController
  before_action :authenticate_user!

  def show
    @region = Region.find(params[:id])
    questions = @region.questions
    @pagenated_questions = questions.page(params[:page]).per(6)
    users = @region.users
    @pagenated_users = users.page(params[:page]).per(6)
    @areas = Area.where(region_id: params[:id])
  end
end
