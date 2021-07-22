class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :description, :img_url
  has_many :contacts
end
