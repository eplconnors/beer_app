class Businessprofile < ActiveRecord::Base
  belongs_to :business_user
  belongs_to :atmosphere
  belongs_to :attraction
  has_many :drinks, through: :taps
  has_many :taps

geocoded_by :address
after_validation :geocode   
end
