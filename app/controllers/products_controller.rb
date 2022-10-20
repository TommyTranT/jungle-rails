class ProductsController < ApplicationController

  def index
    # uses MODEL
    @products = Product.all.order(created_at: :desc)
    # render VIEW. Bottom line is optional because is is implied
    render :index
  end

  def show
    @product = Product.find params[:id]
  end

end
