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

	def update
		@pizza = Pizza.find(pizza_topping_params[:pizza_id])
		num_toppings = pizza_topping_params[:topping_id].length
		selected_toppings = pizza_topping_params[:topping_id]
		current_toppings = @pizza.toppings.pluck(:id)
		current_toppings.each do |ct|
			if !selected_toppings.include?(ct.to_s)
				PizzaTopping.where(topping_id: ct, pizza: @pizza)[0].destroy
			end
		end
		selected_toppings.each do |st|
			if !current_toppings.include?(st.to_i)
				PizzaTopping.create(pizza: @pizza, topping_id: st.to_i)
			end
		end
		redirect_to pizza_path(@pizza)
	end

	private

	def pizza_topping_params
		params.require(:pizza_topping).permit(:pizza_id, :topping_id => [])
	end
end