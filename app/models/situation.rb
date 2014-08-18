class Situation < ActiveRecord::Base
  belongs_to :area
  has_many :photos
end
