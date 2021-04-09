class Dream < ApplicationRecord
    belongs_to :category
    # validates :name, :description, :image_url, presence: true
end
