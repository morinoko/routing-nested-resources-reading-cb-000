class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
  end

  def posts_index
    @author = Author.find(params[:id])
    @post = @author.posts

    render template: 'posts/index'
  end

  def post
    
  end

end
