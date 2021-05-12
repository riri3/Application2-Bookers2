class UsersController < ApplicationController

  def index
    @users = User.all
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
  end


  def edit
    @book = Book.find(params[:id])
  end

  def update
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end


end
