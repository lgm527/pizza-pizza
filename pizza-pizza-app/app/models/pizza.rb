class Pizza < ApplicationRecord
  belongs_to :user
  has_many :pizza_toppings, dependent: :delete_all
  has_many :toppings, through: :pizza_toppings
end
