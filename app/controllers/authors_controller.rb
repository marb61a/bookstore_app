class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end
  
  def show
    @author = Author.find(params[:id])
    #require 'pry';binding.pry
  end
  
  def new
    @author = Author.new
  end
  
  def create
    @author = Author.new(author_params)
    @author.save
    redirect_to @author
  end
  
  private
  def author_params
    params.require(:author).permit(:first_name, :last_name)
  end
end