class Category < ApplicationRecord
    has_many :dreams, dependent: :destroy
    validates :name, presence: true
    validates :name, uniqueness: true
end
