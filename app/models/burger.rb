class Burger < ActiveRecord::Base
  attr_accessible :description, :name, :restaurant_id
  
  has_many :reviews
  belongs_to :restaurant
  
end
