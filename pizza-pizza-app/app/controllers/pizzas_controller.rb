class PizzasController < ApplicationController
	def new
		
		# get a template for a pizzatopping
		# get all the toppings
		@pizzatopping = PizzaTopping.new
		@toppings = Topping.all
		# show all the toppings in the view and the form for a pizzatopping
	end

	def show

		@pizza = Pizza.find(params[:id])
		@pizzas_toppings = @pizza.toppings
		byebug
	end

	private

	def pizza_params
		require(:pizza).permit(:topping_id => [])
	end
end
