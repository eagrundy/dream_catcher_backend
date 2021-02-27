class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :create]
    
  def index
    categories = Category.all 
    render json: categories.to_json(except: [:created_at, :updated_at] )
        #  , include: {category: {only: [:name]} }
  end

  def show
    render json: category.to_json(except: [:created_at, :updated_at] )
  end

  def create
    category = Category.create(category_params)
    if category.save
      render json: category
    else
      render json: category.errors, status: :unprocessable_entity
    end
  end

  private

  def set_category
    category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end

end