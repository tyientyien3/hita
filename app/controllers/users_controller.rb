class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    #@question = Question.find(params[:id])
    @questions = @user.questionee
    @country = @user.country
    @region = @user.region
    @no_answers = Question.where(answer: nil).where(questionee: @user).count
  end

  def no_answer
    @user = User.find(params[:id])
    @no_answers = Question.where(answer: nil).where(questionee: @user)
  end

  def edit
    @user = User.find(params[:id])
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

    # PERMITTED ONLY CURRENT USER
    #if @user != current_user
    #redirect_to user_path(current_user)
    #end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "You have updatad user successfully."
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
