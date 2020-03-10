class QuestionsController < ApplicationController
  before_action :authenticate_user!

  def new
    @user = User.find(params[:user_id])
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @user = User.find(params[:user_id])
    #質問者のuser_id
    @question.questioner = current_user
    #回答者のuser_id
    @question.questionee = @user
    #回答者のcountry_id
    @question.country_id = @user.country_id
    #回答者のcountry_id
    @question.region_id = @user.region_id
    if @question.save
      flash[:success] = "Book was successfully created."
      redirect_to user_question_path(@question.questionee_id, @question)
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
    @user = User.find(params[:user_id])
  end

  def edit
    @question = Question.find(params[:id])
    @user = User.find(params[:user_id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      # 未実装　質問のショー
      redirect_to action: "show", notice: "You have updatad user successfully."
    else
      # ERROR MASSAGE
      flash[:alert] = "Save Error!"
      # RENDER VARIABLES
      render :edit
    end
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy
    @user = User.find(params[:user_id])
    redirect_to user_path(@user), notice: "Your address was successfully destroyed."
  end

  private

  def question_params
    params.require(:question).permit(:question, :answer, :country_id)
  end
end
