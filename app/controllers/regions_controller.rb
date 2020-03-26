class RegionsController < ApplicationController
  before_action :authenticate_user!

  def show
    @region = Region.find(params[:id])
    # 質問一覧
    questions = @region.questions
    @pagenated_questions = questions.page(params[:page]).per(6)
    # ユーザー一覧
    users = @region.users
    @pagenated_users = users.page(params[:page]).per(6)
  end
end
