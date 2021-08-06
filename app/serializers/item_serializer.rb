class ItemSerializer < ActiveModel::Serializer
  attributes :name, :content, :wishlist_id
  belongs_to :wishlists
end
