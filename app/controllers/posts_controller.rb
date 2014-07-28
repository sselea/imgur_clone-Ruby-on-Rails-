class PostsController < ApplicationController

  def index
    if params[:search]
      @posts=Post.where("LOWER(title) LIKE LOWER(?)", "%#{params[:search]}%")
    elsif params[:category_id]
      @category=Category.find(params[:category_id])
      @posts = @category.posts
    else 
      @posts=Post.all
    end
    @posts= @posts.page(params[:page])
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
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:title,:source)
  end
end

