class CountriesController < ApplicationController
  before_action :authenticate_user!

  def show
    @country = Country.find(params[:id])
    questions = @country.questions
    @pagenated_questions = questions.page(params[:page]).per(6)
    users = @country.users
    @pagenated_users = users.page(params[:page]).per(1)
    @regions = Region.where(country_id: params[:id])
  end
end
