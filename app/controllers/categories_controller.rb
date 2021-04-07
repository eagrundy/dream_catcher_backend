class CategoriesController < ApplicationController
    
  def index
    categories = Category.all 
    options = {include: [:dreams]}
    # render json: categories, only: [:id, :name]
    render json: CategorySerializer.new(categories, include: [:dreams])
    # .to_json(except: [:created_at, :updated_at] )
    
  end

end