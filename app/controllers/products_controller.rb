class ProductsController < ApplicationController
  before_action :product_find, only: [:show, :edit, :update, :destroy]
  def index
    if params["filter"]
      @products = Product.where(category: params["filter"])
    else
      @products = Product.all
    end
  end
  def show
    #@product = Product.find_by(id: params["id"])
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
  def edit
    #@product = Product.find_by(id: params[:id])
  end
  def update
    #@product = Product.find_by(id: params[:id])
    if @product.update (product_params)
      redirect_to products_path
    else
      render :edit
    end
  end
  def destroy
    #@product = Product.find_by(id: params[:id])
    @product.destroy
    redirect_to products_path
  end

  private

  def product_find
    @product = Product.find_by(id: params[:id])
  end

  def product_params
    params.require(:product).permit(:name,:tagline,:category)
  end

end
