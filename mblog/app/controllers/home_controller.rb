class HomeController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.all(:order => "created_at desc")
  end
end
