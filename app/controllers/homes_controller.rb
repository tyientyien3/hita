class HomesController < ApplicationController
  def index
    @countries = Country.all
  end

  def about
  end

  def country
    @countries = Country.all
  end
end
