class CategoriesController < ApplicationController
    before_action :set_category, only: [:show]
    
    def index
        categories = Category.all 
        render json: categories.to_json(except: [:created_at, :updated_at] ) , include: {category: {only: [:name]} }
    end

    def show
        render json: category.to_json(except: [:created_at, :updated_at] )
    end

    private

    def set_category
        category = Category.find(params[:id])
    end

end