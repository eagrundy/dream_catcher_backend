class DreamsController < ApplicationController

  def index
    dreams = Dream.all.order('created_at DESC')
    render json: DreamSerializer.new(dreams)
  end

  def create
    dream = Dream.new(dream_params)
    # byebug
    if dream.save
      render json: DreamSerializer.new(dream)
      # , include: [:category]
    else
      render json: {error: "Could not save!"}
      # render json: dream.errors, status: :unprocessable_entity
    end
  end

  
  def destroy
    dream = Dream.find(params[:id])
    dream.destroy
    render json: {message: "Successfully Deleted: #{dream.name}"}
  end
  
  
  private
   
  def dream_params
    params.require(:dream).permit(:name, :description, :image_url, :achieved, :date_achieved, :category_id)
  end
end




# def show
#   dream = Dream.find(params[:id])
#   render json: dream.to_json(except: [:created_at, :updated_at], include: {category: {only: [:name]}})  
# end

# def update
#   dream = Dream.find(params[:id])
#   if dream.update(dream_params)
#       render json: DreamSerializer.new(dream)
#   else
#       render json: {error: "Could not update!"}
#   end
# end

# def set_dream
#   dream = Dream.find(params[:id])
# end