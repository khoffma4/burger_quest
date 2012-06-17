class Restaurant < ActiveRecord::Base
  attr_accessible :description, :name, :locations_attributes
  
  has_many :locations
  has_many :burgers
  
  accepts_nested_attributes_for :locations
  
end
