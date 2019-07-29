class Topping < ApplicationRecord
  has_many :pizzas_toppings
  has_many :pizzas, through: :pizzas_toppings
end
