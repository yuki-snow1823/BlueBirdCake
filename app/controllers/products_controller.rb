class ProductsController < ApplicationController
  def index
  	@products = Product.all.page(params[:page]).per(8)
  end

  def show
  	@product = Product.find(params[:id])
  	@cart = Cart.new
  	@user = current_user
  end

end
