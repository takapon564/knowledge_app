class ListsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find(params[:id])
  end

  def show_profile
    @user = params[:user]
    user_id = params[:id].to_i
    @posts = Post.where(user_id: user_id)
  end
end
