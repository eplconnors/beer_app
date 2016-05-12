class BeersController < ApplicationController
  def index
      @beers = $brewery_db.beers.random
  end
  def search
    @beer = $brewery_db.search.beers(q: params[:q])
  end
end
