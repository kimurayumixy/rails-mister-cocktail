puts "Destroying all Ingredients..."
Ingredient.destroy_all
puts "Destroying all cocktail..."
Cocktail.destroy_all

Cocktail.create!(
  name: "Gin tonic"
)

Cocktail.create!(
  name: "Mojito"
)

Cocktail.create!(
  name: "Whiskey Sour"
)

Ingredient.create!(
  name: 'Gin'
)

Ingredient.create!(
  name: 'Whiskey'
)

Ingredient.create!(
  name: 'Ram'
)

Ingredient.create!(
  name: 'Lemon'
)
