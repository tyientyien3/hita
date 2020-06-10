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
    #回答者のregion_id
    @question.region_id = @user.region_id
    if @question.save
      flash[:success] = "Your question was successfully created."
      redirect_to user_question_path(@question.questionee_id, @question)
    else
      flash[:alert] = "Save Error!"
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
    if @user != current_user
      redirect_to user_question_path(@user, @question)
    end
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      @user = User.find(params[:user_id])
      redirect_to user_path(@user), notice: "You have successfully answered the question."
    else
      flash[:alert] = "Save Error!"
      render :edit
    end
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy
    @user = User.find(params[:user_id])
    redirect_to user_path(@user), notice: "Your question was successfully destroyed."
  end

  private

  def question_params
    params.require(:question).permit(:question, :answer, :country_id)
  end
end
