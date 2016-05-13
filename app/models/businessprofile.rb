class Businessprofile < ActiveRecord::Base
  belongs_to :business_user
  belongs_to :atmosphere
  belongs_to :attraction
end
