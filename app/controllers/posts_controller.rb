class PostsController < ApplicationController
  def index
    @all_posts = Post.all
  end

  def new
    @article = Post.new
  end

  def create
    @article = Post.new(post_params)
    if @article.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @article = Post.find(params[:id])
  end

  def edit
    @article = Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
