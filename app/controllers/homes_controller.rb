class HomesController < ApplicationController
  def index
    @countries = Country.all
  end

  def about
  end
end
