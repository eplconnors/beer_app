class BeersController < ApplicationController
  def index
    @beers = $brewery_db.beers.all(abv: '5.5')
  end
end
