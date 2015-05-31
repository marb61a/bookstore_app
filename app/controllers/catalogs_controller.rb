class CatalogsController < ApplicationController
  def index
    @books = Book.all.page(params[:page]).per(3)
    set_cart_if_session
  end

  def show
      @book = Book.find params[:id]   
  end
  
  def search
  end
  
  private

end