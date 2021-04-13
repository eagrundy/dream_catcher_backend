class DreamSerializer
    include FastJsonapi::ObjectSerializer
    belongs_to :category
    attributes :name, :description, :image_url, :achieved, :date_achieved, :category_id, :category
    
  end
  