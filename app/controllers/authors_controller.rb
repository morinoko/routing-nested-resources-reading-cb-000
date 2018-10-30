class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :posts_index, :post]

  def show
  end

  def post
    @post = Post.find(params[:post_id])

    render template: 'posts/show'
  end

  private

  def set_author
    @author = Author.find(params[:id])
  end

end
