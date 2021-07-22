class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :img_url, :email, :phone_number, :notes, :group_id
  belongs_to :group
end
