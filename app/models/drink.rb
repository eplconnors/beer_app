class Drink < ActiveRecord::Base
  has_many :taps
  has_many :businessprofiles, through: :taps
end
