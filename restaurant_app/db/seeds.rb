# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
foods = Food.create([
  {name: "Clams Oreganato", description: "Baked clams with garlic, spices, and breadcrumbs", price: 9},
  {name: "Deep fried ravioli", description: "Smothered in our house sauce", price: 8, category: 'appetizer'},
  {name: "Hot Antipasto", description: "Garlic shrimp, mussels, clams oregenato, mozzarella sticks, eggplant rollatine", price: 13, category: 'appetizer'},
  {name: "Chicken Marsala", description: "Comes with homemade pasta of your choice", price: 16, category: 'entree'},
  {name: "Baked Ziti", description: "with Ricotta and Mozzarella", price: 15, category: 'entree'},
  {name: "Rigatoni Bolognese", description: "Homemade meat sauce", price: 16, category: 'entree'},
  {name: "Cavatelli and Broccoli", description: "I hope you like garlic", price: 14, category: 'entree'},
  {name: "Shrimp Parmigiana", description: "Comes with homemade pasta of your choice", price: 16, category: 'entree'},
  {name: "Veal Saltimbocca", description: "Thinly sliced proscuitto on top of breaded veal cutlets", price: 17, category: 'entree'},
  {name: "Tartufo", description: "Italian ice cream flavors with a cherry in the center.", price: 8, category: 'dessert'},
  {name: "Tiramisu", description: "Lady’s fingers dipped in coffee and layered with mascarpone cheese", price: 8, category: 'dessert'},
  {name: "Gelato", description: "Choose from the freshly made flavors of the day", price: 6, category: 'dessert'}
])
