class UsersController < ApplicationController
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
    find_user
    if @user.save
      redirect_to @user
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
      @user = User.find_by(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email_address, :password)
    end

end
