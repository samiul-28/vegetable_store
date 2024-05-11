class LeafyGreensController < ApplicationController
  def index
    @leafy_greens = LeafyGreen.all
  end

  def show
    find_leafy_green
  end

  def new
    @leafy_green = LeafyGreen.new
  end

  def create
    @leafy_green = LeafyGreen.new(leafy_green_params)

    if @leafy_green.save
      redirect_to @leafy_green
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    find_leafy_green
  end

  def update
    find_leafy_green
    if @leafy_green.update(leafy_green_params)
      redirect_to @leafy_green
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    find_leafy_green
    @leafy_green.destroy
    redirect_to root_path, status: :see_other
  end

  private

    def find_leafy_green
      @leafy_green = LeafyGreen.find(params[:id])
    end
    def leafy_green_params
      params.require(:leafy_green).permit(:name, :details, :price,  :mfg_date, :expiry_date)
    end
end
