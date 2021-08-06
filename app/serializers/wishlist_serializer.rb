class WishlistSerializer < ActiveModel::Serializer
  attributes :name :description
  has_many :items
end
