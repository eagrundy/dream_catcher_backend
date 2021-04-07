class DreamsController < ApplicationController
  before_action :set_dream, only: [:show]

  def index
    # dreams = Category.find_by_id(id: params[:category_id]).dreams
    dreams = Dream.all
    render json: DreamSerializer.new(dreams)
    # dreams = Category.find_by(id: params[:category_id]).dreams
    # render json: dreams, except: [:created_at, :updated_at]
  end
    
  def show
    render json: dream.to_json(except: [:created_at, :updated_at], include: {category: {only: [:name]}})  
  end

  def create
    # dream = Dream.create(dream_params)
    # dream = category.dreams.build(dream_params)
    dream = Dream.new(dream_params)
    # category = Category.find_by(id: params[:category_id])
    # dream = category.dreams.build(dream_params)
    if dream.save
      render json: DreamSerializer.new(dream, include: [:category])
      # render json: dream
    else
      render json: dream.errors, status: :unprocessable_entity
    end
  end

  # def update
  #   if dream.update(dream_params)
  #     render json: dream
  #   else
  #     render json: dream.errors, status: :unprocessable_entity
  #   end
  # end
    
  # def destroy
  #   dream.delete
  # end


  private

  def set_dream
    dream = Dream.find(params[:id])
  end

  def dream_params
    params.require(:dream).permit(:name, :description, :image_url, :achieved, :date_achieved, :category_id, :id)
  end
end
