class Area < ActiveRecord::Base
  has_many :situations
  has_many :comments
  has_many :photos
  has_many :needs
end
