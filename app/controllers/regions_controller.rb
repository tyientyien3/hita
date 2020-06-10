class RegionsController < ApplicationController
  before_action :authenticate_user!

  def show
    @region = Region.find(params[:id])
    # 質問一覧
    @questions = @region.questions
    # ユーザー一覧
    @users = @region.users
  end
end
