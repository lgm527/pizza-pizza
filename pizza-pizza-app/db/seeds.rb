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
