class Post < ActiveRecord::Base
	validates :title, :source, :presence => true
	belongs_to :user
	belongs_to :category
	has_many :comments
end

