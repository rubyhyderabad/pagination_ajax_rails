class Post < ActiveRecord::Base
  attr_accessible :name, :price
  self.per_page = 1
end
