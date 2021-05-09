class UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @book = @user.book.page(params[:page]).reverse_order
  end
  
  def update
  end
  
end
