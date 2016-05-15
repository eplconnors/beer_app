class BusinessprofilesController < ApplicationController

  def index
    if current_user
    @business_profiles = Businessprofile.near([current_user.latitude, current_user.longitude], 100)
  else
    @business_profiles = Businessprofile.all
  end

  end

  def show
    @b_profile = Businessprofile.find(params[:id])

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
        format.html { redirect_to @b_profile, notice: 'Business Profile information was successfully created.' }
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
    params.require(:businessprofile).permit(:phone_number, :business_user_id, :bio, :address, :attraction_id, :atmosphere_id, :name)
    # saves to our database
 end
end
