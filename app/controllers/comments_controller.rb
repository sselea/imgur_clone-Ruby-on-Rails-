class CommentsController < ApplicationController
	before_filter :load_post

  def show

  end

  def create
  	@comment = @post.comments.build(comment_params)
  	@comment.points = 0
  	@comment.user_id = current_user.id 
  	@comment.post_id = params[:post_id]
  	if @comment.save 
  		redirect_to post_path(@post)
  	else 
  		render "post/show"
  	end
  end

  def destroy
  	@comment = Comment.find(params[:id])
  	@comment.destroy
  end

  def update 
  	@comment = Comment.find(params[:id])
  	@comment.points += params[:vote].to_i
  	
  	if @comment.save
  		#success
  		flash[:notice] = "Nice vote!"
  		redirect_to post_path(@post)
  	else
  		#failure
  	end
  end

  private

  def comment_params
  	params.require(:comment).permit(:description)
  end

  def load_post
  	@post = Post.find(params[:post_id])
	end

end
