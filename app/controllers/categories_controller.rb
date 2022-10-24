class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    # Can inspect an object to find out what it is refering to 
    # raise @category.inspect
    @products = @category.products.order(created_at: :desc)
  end

end
