class HomeController < ApplicationController
  def index
    @vegetables = Vegetable.all
    @common_items = CommonItem.all
    @leafy_greens = LeafyGreen.all
  end
end
