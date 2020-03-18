class FavoritesController < ApplicationController
  def create
    @favorite = current_user.favorites.create(question_id: params[:question_id])
    @questions = Question.all
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @favorite = Favorite.find_by(question_id: params[:question_id], user_id: current_user.id)
    @favorite.destroy
    redirect_back(fallback_location: root_path)
  end
end
