class Comment < ActiveRecord::Base
	validates_presence_of :author, :content, :post
  validates_length_of :content, maximum: 140, message: "You have reached maximum character length of 140."

	belongs_to :post,
	class_name: "Post",
	foreign_key: "post_id"

  attr_accessible :comment_author, :content, :post_id
end
