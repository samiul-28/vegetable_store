class CommonItemsController < ApplicationController
  def index
    @common_items = CommonItem.all
  end

  def show
    find_common_item
  end

  def new
    @common_item = CommonItem.new
  end

  def create
    @common_item = CommonItem.new(common_item_params)

    if @common_item.save
      redirect_to @common_item
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    find_common_item
  end

  def update
    find_common_item
    if @common_item.update(common_item_params)
      redirect_to @common_item
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    find_common_item
    if @common_item.present?
      @common_item.destroy
    end 
    redirect_to root_path, status: :see_other
  end

  private

    def find_common_item
      @common_item = CommonItem.find(params[:id])
    end
    def common_item_params
      params.require(:common_item).permit(:name, :variety, :details, :price, :mfg_date, :expiry_date)
    end
end
