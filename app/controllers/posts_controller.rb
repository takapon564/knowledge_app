class PostsController < ApplicationController
  def index
    @posts = current_user.posts
  end

  def show
    @post =current_user.posts.find(params[:id])
    @post.save!
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params.merge(user_id: current_user.id))

    if @post.save
      redirect_to @post, notice: "記事「#{@post.name}」を投稿しました。"
    else
      render :new
    end
  end

  def edit
    @post = current_user.posts.find(params[:id])
  end

  def update
    post = current_user.posts.find(params[:id])
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
