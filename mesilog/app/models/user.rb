class User < ApplicationRecord

  enum :role {
    nomal_user:0,
    shop_user:1
  }

  validates :name, presence: true
  validates :email, length: { minimum: 5}
  validates :email, uniqueness: true
  validates :password, length: { minimum:5}


  has_many :shop
  has_many :review

  has_secure_password
end
