class HomesController < ApplicationController
  def index
    @countries = Country.all
    random = Question.order("RANDOM()").limit(10)
  end

  def about
  end

  def country
    @countries = Country.all
  end
end



