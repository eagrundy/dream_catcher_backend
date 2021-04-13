class Category < ApplicationRecord
    has_many :dreams
end



# validates :name, presence: true
# validates :name, uniqueness: true