class Post < ActiveRecord::Base
	has_many :comment
	
	belongs_to :category
	class_name :"Category"
	foreign_key :"category_id"
	
	belongs_to :author
	class_name  :"Author"
	foreign_key :"author_id"
  
  attr_accessible :category_id, :author_id, :content, :title
end
