class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  
   
  private

    def 
     permit(:name, :variety, :details, :price, :mfg_date, :expiry_date, :type)
    end
end
