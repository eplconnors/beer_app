class DrinksController < ApplicationController
  def new
    @user = current_business_user
  end

  def drinksearch
    @beer = $brewery_db.search.beers(q: params[:q])
  end
  def edit
  end
  def create
    name, abv, description, biz = (params[:name]), (params[:abv]), (params[:description]), (params[:biz])
    @beer = Drink.create(name: name, abv: abv, description: description)
    @tap = Tap.create(drink_id: @beer.id, businessprofile_id: biz)

    respond_to do |format|
      if @beer.save
        format.html {redirect_to businessprofile_path(@tap.businessprofile_id)}
      else
        render :new
      end
    end
  end
end
