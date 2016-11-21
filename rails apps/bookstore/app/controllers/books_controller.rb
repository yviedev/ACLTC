class BooksController < ApplicationController
  def index
    @books = Book.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    #render 'show.html.erb'
    @book = Book.new(
      title: params["title"],
      author: params["author"],
      price: params["price"],
      genre: params["genre"],
      pages: params["pages"]
      )
    @book.save
    redirect_to '/books'
  end

  def show
    @book = Book.find_by(id: params["id"])
    render 'show.html.erb'
  end

  def edit
    @book = Book.find_by(id: params["id"])
    render 'edit.html.erb'
  end

  def update
    @book = Book.find_by(id: params["id"])
    @book.update(
      title: params["title"],
      author: params["author"],
      price: params["price"],
      genre: params["genre"],
      pages: params["pages"]
      )

    redirect_to "/books/#{@book.id}"
  end

  def destroy
    book = Book.find_by(id: params["id"])
    book.destroy
    redirect_to "/books"
  end
end
