class UsersController < ApplicationController
  before_action :authenticate, only: [:destroy]


  def index
    @users = User.all
  end

  def show
    find_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    find_user
  end

  def update
    find_user
    if @user.update
      redirect_to @user
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    find_user
    if @user.destroy
      render :root_path
    end
  end


  private
    def find_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email_address, :password)
    end

end
