class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def vegetables
    @vegetables = Product.vegetables
  end

  def common_items
    @common_items = Product.common_items
  end

  def leafy_greens
    @leafy_greens = Product.leafy_greens
  end



  def show
    find_product
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    find_product
  end

  def update
    find_product
    if @product.update(product_params)
      redirect_to @product
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    find_product
    if @product.present?
      @product.destroy
    end
    redirect_to root_path, status: :see_other
  end

  private

    def find_product
      @product = Producct.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :variety, :details, :price, :mfg_date, :expiry_date, :category, image_attributes:
      [
        :name, :copywright, :alt_text, :details, :url
      ],
      supplier_arrtibutes:
      [
        :name, :address, :tin_number, :phone_number
      ]
      )
    end
end
