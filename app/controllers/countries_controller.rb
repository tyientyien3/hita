class CountriesController < ApplicationController
  before_action :authenticate_user!

  def show
    @country = Country.find(params[:id])
    @questions = @country.questions
    @users = @country.users
    @regions = Region.where(country_id: params[:id])
  end
end
