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

  def update
    @article = Post.find(params[:id])
    if @article.update(post_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @article = Post.find(params[:id])
    @article.destroy
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
