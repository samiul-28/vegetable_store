class VegetablesController < ApplicationController
  def index
    @vegetables = Vegetable.all
  end

  def show
    @vegetable = Vegetable.find(params[:id])
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
    @vegetable = Vegetable.find(params[:id])
  end
  def update
    @vegetable = Vegetable.find(params[:id])

    if @vegetable.update(vegetable_params)
      redirect_to @vegetable
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @vegetable = Vegetable.find(params[:id])
    @vegetable.destroy

    redirect_to root_path, status: :see_other
  end

  private
  def vegetable_params
    params.require(:vegetable).permit(:name, :description)
  end


end
