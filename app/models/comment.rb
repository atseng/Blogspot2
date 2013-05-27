class Comment < ActiveRecord::Base
	belongs_to :post
	class_name :"Post"
	foreign_key :"post_id"

  attr_accessible :comment_author, :content, :post_id
end
