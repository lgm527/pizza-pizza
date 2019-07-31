class PizzaToppingsController < ApplicationController

	def create
		@pizza = Pizza.create(user_id: session[:user_id], order_number: 1)
		# loop through otopings creat pizzatoppoing
		num_toppings = pizza_topping_params[:topping_id].length
		pizza_topping_params[:topping_id][1...num_toppings].each do |t_id|
			PizzaTopping.create(pizza: @pizza, topping_id: t_id)
		end
		redirect_to pizza_path(@pizza)
	end

	private

	def pizza_topping_params
		params.require(:pizza_topping).permit(:topping_id => [])
	end
end

pizza_topping_params[:topping_id][1...num_toppings].each do |t_id|
			puts t_id
		end