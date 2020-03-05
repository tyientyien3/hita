class QuestionsController < ApplicationController
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
    @question.questionee = User.find(params[:user_id])
    if @question.save
      flash[:success] = "Book was successfully created."
      # binding.pry
      redirect_to user_question_path(@question.questionee_id, @question)
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
    @user = User.find(params[:user_id])
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy
    @user = User.find(params[:user_id])
    redirect_to user_path(@user), notice: "Your address was successfully destroyed."
  end

  private

  def question_params
    params.require(:question).permit(:question, :answer)
  end
end
