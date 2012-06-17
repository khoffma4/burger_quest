class AddRestaurantIdToLocation < ActiveRecord::Migration
  
  def change
    add_column :locations, :restaurant_id, :integer
  end

end
