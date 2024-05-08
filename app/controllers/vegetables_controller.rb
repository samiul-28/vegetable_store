class VegetablesController < ApplicationController
  def index
    @vegetables = Vegetable.all
  end

  def show
  end
end
