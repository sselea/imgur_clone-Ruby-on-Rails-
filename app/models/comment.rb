class Comment < ActiveRecord::Base
	belongs_to :post
	belongs_to :user
	has_many :nested_comments, class_name: "Comment", :foreign_key => 'parent_id'
	belongs_to :parent, :class_name => "Comment"


	validate :description, :presence =>true
end
