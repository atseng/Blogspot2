class Post < ActiveRecord::Base
	validates_presence_of :author, :category, :content, :title
  validates_uniqueness_of :content, :title
  validates_length_of :title, minimum: 3, message: "Post title needs to be greater than 3 characters."

	has_many :comment
	
	belongs_to :category,
	class_name: "Category",
	foreign_key: "category_id"
	
	belongs_to :author,
	class_name: "Author",
	foreign_key: "author_id"
  
  attr_accessible :category_id, :author_id, :content, :title
end
