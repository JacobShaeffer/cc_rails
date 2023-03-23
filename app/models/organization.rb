class Organization < ApplicationRecord
  belongs_to :user
  has_many :copyright_permissions, dependent: :destroy
end
