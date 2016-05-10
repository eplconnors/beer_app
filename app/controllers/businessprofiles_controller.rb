class BusinessprofilesController < ApplicationController

  def show
    @business_user = BusinessUser.find(params[:id])
  end
end
