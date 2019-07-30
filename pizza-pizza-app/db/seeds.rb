# Topping.create(name: '')

toppings_list = [
"Pepperoni",
"Mushrooms",
"Onions",
"Sausage",
"Bacon",
"Extra Cheese",
"Olives",
"Peppers",
"Pineapple",
"Spinach",
"Bacon",
"Garlic",
"Basil",
"Ham",
"Chicken",
"Beef",
"Artichoke",
"Anchovy",
"Arugula",
"Shrimp",
"Broccoli",
"Eggplant",
"Pineapple",
"Pine Nuts",
"Cauliflower"
]

toppings_list.each do |name|
  Topping.create( name: name )
end

# User.create("first_name", "username", "address", "password")




# User.create(first_name: "Laurell", username: "lgm527", address: "Brooklyn, NY", password: "12345678")
# User.create(first_name: "Jahaziel", username: "j_g", address: "NY, NY", password: "87654321")
# User.create(first_name: "Julia", username: "julia_r", address: "Mahwah, NJ", password: "11223344")
