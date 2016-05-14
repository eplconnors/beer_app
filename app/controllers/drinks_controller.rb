class DrinksController < ApplicationController
  def new
    @user = current_business_user
    @drink = Drink.all
  end

  def drinksearch
    @beer = $brewery_db.search.beers(q: params[:q])
  end
  def join
    drink, biz = (params[:drink]), (params[:biz])
    @tap = Tap.new(drink_id: drink, businessprofile_id: biz)
    respond_to do |format|
      if @tap.save
        format.html {redirect_to drinks_path}
      else
        render :new
      end
    end
  end
  def edit
  end

  def create
    name, abv, description = (params[:name]), (params[:abv]), (params[:description])
    @beer = Drink.new(name: name, abv: abv, description: description)
    respond_to do |format|
      if @beer.save
        format.html {redirect_to @beer}
      else
        render :new
      end
    end
  end

  def show
    @beer = Drink.find(params[:id])
  end

  def index
  end
private
  def drink_params
    params.require(:drink).permit(:name, :abv, :description)
  end
end
