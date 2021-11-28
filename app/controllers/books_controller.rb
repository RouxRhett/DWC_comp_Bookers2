class BooksController < ApplicationController
  def new
  end

  def create
  end

  def index
    @books = Book.all
  end

  def show
  end

  def destroy
  end

  private

  def post_image_params
    params.require(:book).permit(:title, :body)
  end
end
