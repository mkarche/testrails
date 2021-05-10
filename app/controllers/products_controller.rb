class ProductsController < ApplicationController
  def index
    if params["filter"]?
      @products = Product.find_by! category: params["filter"]
    else
      @products = Product.all
    end
  end
  def show
    @product = Product.find_by id: params["id"]
  end
end
