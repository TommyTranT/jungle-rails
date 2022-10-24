class ProductsController < ApplicationController

  def index
    # uses MODEL
    @products = Product.all.order(created_at: :desc)
    # render VIEW. Bottom line is optional because is is implied
    render :index
  end


  # This connects to the show file in views/prroducts/show
  # this action is rendering "show" as a template
  def show
    # Any instance variable delcared in this action will be magically passed down to the views file
    @product = Product.find params[:id]
    @msg = "Hello"

  end

end
