class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show 
    @product = Product.find_by_id(params[:id])
   
  end

  private
  def product_params
    params.require(:product).permit(:name, :image, :price, :details)
  end

  
end
