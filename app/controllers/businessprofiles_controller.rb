class BusinessprofilesController < ApplicationController

  def index
    if params[:attraction_id] == nil && params[:atmosphere_id] == nil
      @businessprofile = Businessprofile.near([current_user.latitude, current_user.longitude], 100)
    elsif params[:attraction_id] != nil
      @businessprofile = Businessprofile.where(attraction_id: params[:attraction_id])
    elsif params[:atmosphere_id] != nil
      @businessprofile = Businessprofile.where(atmosphere_id: params[:atmosphere_id])
    elsif params[:attraction_id] != nil && params[:atmosphere_id] != nil
      @businessprofile = Businessprofile.where(attraction_id: params[:attraction_id], atmosphere_id: params[:atmosphere_id])
    end
    @attractions = Attraction.all.order(:name).distinct
    @atmospheres = Atmosphere.all.order(:status).distinct
    if params[:q].blank?
      @q = Businessprofile.none.ransack
    else
      @q = Businessprofile.ransack(params[:q])
  end
      @profiles = @q.result(distinct: true).includes(:taps, :drinks)
end



  def show
    @b_profile = Businessprofile.find(params[:id])
    @beer = @b_profile.taps.map{|tap| tap.drink.name}
    @beer.uniq!
  end

    def new
      @b_profile = Businessprofile.new
    end

    def edit
      @b_profile = Businessprofile.find(params[:id])
    end

    def update
      @b_profile = Businessprofile.find(params[:id])
    respond_to do |format|
        if @b_profile.update(businessprofile_params)
          format.html { redirect_to @b_profile, notice: 'Business Profile was successfully updated.' }
      else
        format.html { render :edit }

      end
    end
  end

    def create
    @b_profile = Businessprofile.new(businessprofile_params)

    respond_to do |format|
      if @b_profile.save
        format.html { redirect_to new_drink_path, notice: 'Business Profile information was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
        @b_profile = Businessprofile.find(params[:id])
      @b_profile.destroy
    respond_to do |format|
      format.html { redirect_to businessprofile_url, notice: 'Business Profile information was successfully destroyed.' }
    end
  end

 private
 def set_businessprofile
    @b_profile = Businessprofile.find(params[:id])
 end

 def businessprofile_params
    params.require(:businessprofile).permit(:phone_number, :business_user_id, :bio, :address, :attraction_id, :atmosphere_id, :name, :motto, :avatar)
    # saves to our database
 end
end
