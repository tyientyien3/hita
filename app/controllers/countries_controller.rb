class CountriesController < ApplicationController
  before_action :authenticate_user!

  def show
    @country = Country.find(params[:id])
    @regions = Region.where(country_id: params[:id])
    # 質問一覧
    questions = @country.questions
    @pagenated_questions = questions.page(params[:page]).per(8)
    # ユーザー一覧
    users = @country.users
    @pagenated_users = users.page(params[:page]).per(8)
  end
end


