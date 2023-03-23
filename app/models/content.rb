class Content < ApplicationRecord
  belongs_to :user
  belongs_to :copyright_permission
  mount_uploader :file, FileUploader
  has_many :content_metadata, dependent: :destroy
  has_many :metadata, through: :content_metadata
end