class Location < ActiveRecord::Base
  attr_accessible :city, :state, :street, :zip, :restaurant_id
  
  belongs_to :restaurant
  
end
