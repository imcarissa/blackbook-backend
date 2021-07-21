class Contact < ApplicationRecord
    belongs_to :Group
    validates :name, presence :true
end
