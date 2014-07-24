class PostsController < ApplicationController
  def index
    @posts=Post.all
  end

  def show
    @post=Post.find(params[:id])
    if current_user
      @comment = @post.comments.build
      # @comment = Comment.new( :post_id => @post.id )
    end

  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save 
      redirect_to posts_path, :notice => "Post Saved"
    else
      render "new"
    end
  end 

  def edit
  end

  def update
    @comment.points += + 1
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:title,:source)
  end
end

