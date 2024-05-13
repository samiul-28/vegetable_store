class ProductsController < ApplicationController
  def index
    @products = Product.all
  end


  private

    def product_params
      params.require(:product).permit(:name, :variety, :details, :price, :mfg_date, :expiry_date, image_attributes:
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
