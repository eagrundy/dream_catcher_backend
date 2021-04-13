class CategoriesController < ApplicationController
    
  def index
    categories = Category.all
    # .order('name ASC')
    options = {include: [:dreams]}
    render json: CategorySerializer.new(categories, include: [:dreams])
    
  end

end