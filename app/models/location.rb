class Location < ActiveRecord::Base
  attr_accessible :city, :state, :street, :zip, :restaurant_id
  acts_as_gmappable

  belongs_to :restaurant

  def gmaps4rails_address
  #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    "#{self.street}, #{self.city}, #{self.state} #{self.zip}" 
  end
  
  def gmaps4rails_infowindow
    "#{self.restaurant.name}"
  end

end
