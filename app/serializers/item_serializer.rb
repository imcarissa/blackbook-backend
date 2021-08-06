class ItemSerializer < ActiveModel::Serializer
  attributes :wishlist_id :name :content
  belongs_to :wishlists
end
