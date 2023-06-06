class BookCommentsController < ApplicationController
  
  def create
    book = Book.find(params[:books_id])
    comment = current_user.book_comments.new(book_comment_params)
    comment.books_id = books.id
    comment.save
    redirect_to books_path(books)
  end

  private

  def post_comment_params
    params.require(:book_comment).permit(:comment)
  end
  
end
