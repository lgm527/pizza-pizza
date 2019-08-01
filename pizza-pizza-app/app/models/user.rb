class User < ApplicationRecord
  has_secure_password

  has_many :pizzas, dependent: :destroy

  validates_uniqueness_of :username
  validates :password, length: { minimum: 8 }

end
