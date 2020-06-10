class CountriesController < ApplicationController
  before_action :authenticate_user!

  def show
    @country = Country.find(params[:id])
    @regions = Region.where(country_id: params[:id])
    # 質問一覧
    @questions = @country.questions

    # ユーザー一覧
    @users = @country.users

  end
end


