class Item < ApplicationRecord
    belongs_to :wishlists
    validates :name, presence: true
end
