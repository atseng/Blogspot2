class Author < ActiveRecord::Base
	has_many :post
  attr_accessible :email, :name
end
