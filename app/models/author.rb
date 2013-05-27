class Author < ActiveRecord::Base
	validates_uniqueness_of :email
  validates_presence_of :email, :name
  validates_length_of :email, minimum: 6, message: "Email provdied does not contain enough characters. Must be 7 characters long."

	has_many :post
  attr_accessible :email, :name
end
