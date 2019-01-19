class ListsController < ApplicationController
  def index
    @posts = Post.all
  end
end
