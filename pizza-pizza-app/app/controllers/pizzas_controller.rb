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
	end

	def edit
		@pizza = Pizza.find(params[:id])
		@pizzas_toppings = @pizza.toppings.pluck(:id)
		@toppings = Topping.all
	end

	def destroy
		@user = User.find(session[:user_id])
		@pizza = Pizza.find(params[:id])
		@pizza.destroy
		redirect_to user_path(@user)
	end

	private

	def pizza_params
		require(:pizza).permit(:topping_id => [])
	end
end
