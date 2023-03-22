class Content < ApplicationRecord
  belongs_to :user
  mount_uploader :file, FileUploader
  has_many :content_metadata, dependent: :destroy
  has_many :metadata, through: :content_metadata
end