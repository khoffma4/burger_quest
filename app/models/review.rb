class Review < ActiveRecord::Base
  attr_accessible :content, :rating, :title, :user_id, :burger_id
  
  belongs_to :user
  belongs_to :burger
end
