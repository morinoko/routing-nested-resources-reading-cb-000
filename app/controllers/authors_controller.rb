class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :posts_index, :post]

  def show
    @author = Author.find(params[:id])
  end

  def posts_index
    @author = Author.find(params[:id])
    @posts = @author.posts

    render template: 'posts/index'
  end

  def post

  end

  private 

  def set_author
    @author = Author.find(params[:id])
  end

end
