class UsersController < ApplicationController

  def index
    @users = User.all
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
    redirect_to book_path(@book.id)
    flash[:create] = 'You have created book successfully.'
    else
    @books = Book.all
    render :index
    end
  end

  def show
    @books = Book.all
    @book = Book.new

  end


  def edit

  end

  def update

  end

end
