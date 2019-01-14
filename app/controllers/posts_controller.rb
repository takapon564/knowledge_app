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
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update!(post_params)
    redirect_to posts_url, notice: "記事「#{post.title}]」を更新しました。"
  end
   def destroy
     post = Post.find(params[:id])
     post.destroy
     redirect_to posts_url, notice: "記事「#{post.title}」を削除しました。"
   end

  private 

    def post_params
      params.require(:post).permit(:title, :content)
    end
end
