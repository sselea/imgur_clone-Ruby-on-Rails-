class CommentsController < ApplicationController
	before_filter :load_post

  def show

  end

  def create
  
      if params[:parent_id] != ""

      	@comment = @post.comments.build(comment_params)
        @parent = Comment.find(params[:parent_id])
      	@comment.points = 0
        @comment.parent_id= params[:parent_id]
      	@comment.user_id = current_user.id 
      	@comment.post_id = params[:post_id]
        @comment.uv.push(current_user.id.to_s)
        	if @comment.save 
        		redirect_to post_path(@post)
        	else 
        		render "post/show"
        	end
      else
        @comment = @post.comments.build(comment_params)
        @comment.points = 0
        @comment.user_id = current_user.id 
        @comment.post_id = params[:post_id]
        @comment.uv.push(current_user.id.to_s)
        if @comment.save 
          redirect_to post_path(@post)
        else 
          render "post/show"
        end
      end
  
  end

  def destroy
  	@comment = Comment.find(params[:id])
  	@comment.destroy
  end

  def update 
  	@comment = Comment.find(params[:id])

       if @comment.uv.include?(current_user.id.to_s)
          flash[:notice] = "STOP CHEATING PUNK!"
      else
          @comment.uv.push(current_user.id.to_s)
          @comment.points += params[:vote].to_i
      end
  	
  	if @comment.save
  		#success
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
