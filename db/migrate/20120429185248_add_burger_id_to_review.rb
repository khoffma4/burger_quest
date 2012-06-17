class AddBurgerIdToReview < ActiveRecord::Migration
  
  def change
    add_column :reviews, :burger_id, :integer
  end
  
end
