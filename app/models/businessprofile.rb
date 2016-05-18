class Businessprofile < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  belongs_to :business_user
  belongs_to :atmosphere
  belongs_to :attraction
  has_many :drinks, through: :taps
  has_many :taps

geocoded_by :address
after_validation :geocode
end
