class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @post.save!
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    post.save!
    redirect_to posts_url, notice: "記事「#{post.title}」の投稿が完了しました。"
  end

  def edit
  end

  private 

    def post_params
      params.require(:post).permit(:title, :content)
    end
end
