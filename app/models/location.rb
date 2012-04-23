class Location < ActiveRecord::Base
  attr_accessible :city, :state, :street, :zip
end
