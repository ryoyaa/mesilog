class User < ApplicationRecord
  authenticates_with_sorcery!

  enum role: {
    normal_user: 0,
    shop_user: 1
  }


  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true

  has_many :shops

end
