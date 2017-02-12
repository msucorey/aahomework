class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    create
  end

  def create
    Book.create(title: params[:title], author: params[:author])
    redirect_to books_url
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to books_url
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
