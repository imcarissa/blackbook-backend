class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :about
  has_many :contacts
end
