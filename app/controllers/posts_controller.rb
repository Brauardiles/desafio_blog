class PostsController < ApplicationController

  http_basic_authenticate_with name:"desafiovamoscontodo", password: "XAHTJEAS23123%23", only:
  :dashboard

  def dashboard
  end

  def new
    @post = Post.new
  end
  def create_post
    @post = Post.create(post_params)
    @post.content = params[:content].gsub(params[:censored],"")
    @post.save
  end

  def post_params
    params.permit(:title, :image_link, :content, :censored)
  end
end
