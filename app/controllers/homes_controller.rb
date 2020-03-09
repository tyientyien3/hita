class HomesController < ApplicationController
  def index
    @countries = []
    @regions = []
    Country.all.each do |country|
      @countries.push(country.country_name)
      @temp = []
      country.regions.each do |region|
        @temp.push(region.region_name)
      end
      @regions.push(@temp)
    end
  end

  def about
  end
end
