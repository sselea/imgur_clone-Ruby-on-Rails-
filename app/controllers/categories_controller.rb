class CategoriesController < ApplicationController
	
	def index
	end	

 
  def show
  	@category=Category.find(params[:id])
  	@category_posts = @category.posts
  end

  def update
  end
end
