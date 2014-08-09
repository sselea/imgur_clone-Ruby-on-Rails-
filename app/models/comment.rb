class Comment < ActiveRecord::Base
	belongs_to :post
	belongs_to :user
	has_many :nested_comments, class_name: "Comment", :foreign_key => 'parent_id'
	belongs_to :parent, :class_name => "Comment"
	scope :top, -> {where(parent_id: nil).order(points: :desc)}

	serialize :uv, Array
	validate :description, :presence =>true
end

