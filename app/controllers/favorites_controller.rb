class FavoritesController < ApplicationController
  
  def create
    books = Book.find(params[:books_id])
    favorite = current_user.favorites.new(books_id: books.id)
    favorite.save
    redirect_to books_path
  end

  def destroy
    books = Book.find(params[:books_id])
    favorite = current_user.favorites.find_by(books_id: books.id)
    favorite.destroy
    redirect_to books_path
  end
  
end
