class WelcomeController < ApplicationController
  def index

    if user_signed_in?
      redirect_to user_page_path
    end
  end
end
