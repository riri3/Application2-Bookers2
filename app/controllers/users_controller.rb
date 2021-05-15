class UsersController < ApplicationController
  
  def create
    @user = User.new(user_params)
    @user.user_id = current_user.id
    @user.save
    redirect_to book_path(@book.id)
  end

  
  def index
    @users = User.all
    @book = Book.new
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @book = @user.book.page(params[:page]).reverse_order
    @book = Book.new
    @books = Book.where(user_id: params[:id])
  end


  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      flash[:success] = "You have updated user successfully."
      redirect_to user_path(user)
    else
      render :edit
    end
    
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
