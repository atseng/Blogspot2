class Comment < ActiveRecord::Base
  attr_accessible :comment_author, :content, :post_id
end
