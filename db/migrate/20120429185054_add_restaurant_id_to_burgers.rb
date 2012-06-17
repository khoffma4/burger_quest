class AddRestaurantIdToBurgers < ActiveRecord::Migration
 
  def change
    add_column :burgers, :restaurant_id, :integer
  end
 
end
