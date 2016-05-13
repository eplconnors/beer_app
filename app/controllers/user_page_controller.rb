class UserPageController < ApplicationController

  before_action :set_user_page, only: [:show, :edit, :update, :destroy]

  before_filter :authenicate_user!
end
