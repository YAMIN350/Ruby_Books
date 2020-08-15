class BooksController < ApplicationController
  def index
    @books = Book.page(params[:page]).per(10)
    @book = Book.new
    @categories = Category.all
  end

  def create
    Book.create title: params[:title], category_id: params[:category_id]
    redirect_to "/books"
  end

  def destroyAllBook
    Book.all.destroy_all
    flash[:destroy_all] = "Tous les livres ont bien été supprimé !"
    redirect_to "/books"
  end

  def show
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update title: params[:title]
      flash[:success] = 'Le livre a bien été mis à jour !'
      redirect_to "/books/#{params[:id]}"
    else
      render 'show'
    end
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to "/books"
  end
end
