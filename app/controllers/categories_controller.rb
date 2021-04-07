class CategoriesController < ApplicationController
  # before_action :set_category, only: [:show]
    
  def index
    categories = Category.all 
    render json: categories, only: [:id, :name]
    # .to_json(except: [:created_at, :updated_at] )
    
  end

  def show
    category = Category.find_by(id: params[:id])
    render json: { id: category.id, name: category.name}
  end

  # def create
  #   # binding.pry
  #   category = Category.create(category_params)
  #   if category.save
  #     render json: category
  #   else
  #     render json: category.errors, status: :unprocessable_entity
  #   end
  # end

  # def update
  #   if category.update(category_params)
  #     render json: category
  #   else
  #     render json: category.errors, status: :unprocessable_entity
  #   end  
  # end

  # def destroy
  #   category.delete
  # end

  # private

  # # def set_category
  # #   category = Category.find(params[:id])
  # # end

  # def category_params
  #   params.require(:category).permit(:name)
  # end

end