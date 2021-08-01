class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone_number, :notes, :group_id
  belongs_to :group
end
