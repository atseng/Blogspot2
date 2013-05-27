class Category < ActiveRecord::Base
	has_many :post
  attr_accessible :name
end
