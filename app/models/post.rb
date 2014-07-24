class Post < ActiveRecord::Base
	validates :title, :source, :presence => true
	belongs_to :category
	belongs_to :user
	has_many :comments
end
