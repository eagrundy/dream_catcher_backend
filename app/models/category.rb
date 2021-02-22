class Category < ApplicationRecord
    has_many :dreams
    validates :name, presence: true
    validates: :name, uniqueness: true
end
