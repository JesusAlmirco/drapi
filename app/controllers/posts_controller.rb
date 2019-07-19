class PostsController < ApplicationController
  #get /post
  def index
    @posts = Post.where(published: true)
    render js: @posts, status: :ok
  end

  #get /post{id}
  def show
    @post = Post.find(params[:id])
    render json: @json, status: :ok
  end
end
