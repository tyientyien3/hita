class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @country = @user.country
    @region = @user.region
    @no_answers = Question.where(answer: nil).where(questionee: @user).count
    # 質問一覧
    questions = @user.questionee
    @pagenated_questions = questions.page(params[:page]).per(9)
  end

  def no_answer
    @user = User.find(params[:id])
    # 未回答質問一覧
    no_answers = Question.where(answer: nil).where(questionee: @user)
    @pagenated_questions = no_answers.page(params[:page]).per(9)
  end

  def edit
    @user = User.find(params[:id])
    # 自分の情報のみ編集可
    if @user != current_user
      redirect_to user_path(current_user)
    end
    # セレクトボックス連動
    @countries = []
    @regions_name = []
    Country.all.each do |country|
      @countries.push(country.country_name)
      @temp_names = []
      country.regions.each do |region|
        @temp_names.push({ "id": region.id, "name": region.region_name }.to_json)
      end
      @regions_name.push(@temp_names)
    end
    puts @regions_name
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "You have successfully updatad your info."
    else
      # ERROR MASSAGE
      flash[:alert] = "Save Error!"
      # RENDER VARIABLES
      render :edit
    end
  end

  def confirm
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path, notice: "Your account was successfully destroyed."
  end

  private

  def user_params
    params.require(:user).permit(:username, :introduction, :profile_image, :country_id, :region_id, :area_id, :user_status)
  end
end
