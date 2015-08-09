class Provider < ActiveRecord::Base

  has_many :comments

  geocoded_by :address
  after_validation :geocode

end
