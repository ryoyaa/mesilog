class Shop < ApplicationRecord

  validates :user_id, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :image, presence: true

  belongs_to :user
  has_many :menu
  has_many :review
  mount_uploader :image, ImageUploader
end
