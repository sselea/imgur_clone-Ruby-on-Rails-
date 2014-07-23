class Post < ActiveRecord::Base
	validates :title, :source, :presence => true
end
