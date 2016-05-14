class User < ActiveRecord::Base
	validates :email, :user_name, :password_confirmation, :presence =>true
	has_secure_password

	has_many :posts
	has_many :comments, :through => :posts
	
end
