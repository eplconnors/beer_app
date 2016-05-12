class Businessprofile < ActiveRecord::Base
    belongs_to :business_user
    belongs_to :main_attraction
end
