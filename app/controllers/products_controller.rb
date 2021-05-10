class ProductsController < ApplicationController
  def index
    if params["filter"]
      @products = Product.where(category: params["filter"])
    else
      @products = Product.all
    end
  end
  def show
    @product = Product.find_by(id: params["id"])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new (product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end

  end

  private

  def product_params
    params.require(:product).permit(:name,:tagline,:category)
  end

end
