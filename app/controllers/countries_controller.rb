class CountriesController < ApplicationController

  #　メンターさんに質問
  #　書き方あってる？特定のcountry_id を持ってるregionが選ばれる。
  def show
    @country = Country.find(params[:id])
    @regions = Region.where(country_id: params[:id])
  end
end
