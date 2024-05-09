class VegetablesController < ApplicationController
  def index
    @vegetables = Vegetable.all
  end

  def show
    find_vegetable
  end

  def new
    @vegetable = Vegetable.new
  end

  def create
    @vegetable = Vegetable.new(vegetable_params)

    if @vegetable.save
      redirect_to @vegetable
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    find_vegetable
  end

  def update
    find_vegetable
    if @vegetable.update(vegetable_params)
      redirect_to @vegetable
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    find_vegetable
    @vegetable.destroy
    redirect_to root_path, status: :see_other
  end

  private

    def find_vegetable
      @vegetable = Vegetable.find(params[:id])
    end
    def vegetable_params
      params.require(:vegetable).permit(:name, :description)
    end


end
