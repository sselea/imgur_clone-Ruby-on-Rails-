class PostsController < ApplicationController

  def index
    if params[:category_id]
      @category=Category.find(params[:category_id])
      @posts = @category.posts
    else 
      @posts=Post.all
    end
    @posts = @posts.page(params[:page])
  end

  def show
    @post=Post.find(params[:id])
    @parent_comments = @post.comments.top
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

  def search
    if params[:term]
      @posts = Post.where("LOWER(title) LIKE LOWER(?)", "%#{params[:term]}%").page(params[:page])
    end
    render :partial => "post", :layout => false
  end

  private
  def post_params
    params.require(:post).permit(:title,:source,:category_id)
  end
end

