class Pizza < ApplicationRecord
  belongs_to :user
  has_many :pizzas_toppings
  has_many :toppings, through: :pizzas_toppings
end
