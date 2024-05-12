class ProductsController < ApplicationController
  def index
    @products = Product.all
  end


  private

    def product_params
      params.require(:product).permit(:name, :variety, :details, :price, :mfg_date, :expiry_date)
    end
end
