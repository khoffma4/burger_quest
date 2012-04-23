class Review < ActiveRecord::Base
  attr_accessible :content, :rating, :title
end
