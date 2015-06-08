class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update]
  def index
    @posts = Post.all
  end
  def show
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(post_parameters)
    @post.user = User.first
    if @post.save
      flash[:notice] = "Your post was created"
      redirect_to posts_path
    else
      render :new
    end
  end
  def edit
  end
  def update
    if @post.update(post_parameters)
      flash[:notice] = "The post was updated"
      redirect_to posts_path
    else
      render :edit
    end
  end

  private 

  def post_parameters
    params.require(:post).permit(:url, :title, :description)
  end
  def find_post
    @post = Post.find(params[:id])
  end

end
