require_relative '../config/environment.rb'



# users
pat = User.new()
taimur = User.new()

# recipes
hamburger = Recipe.new
shawarma = Recipe.new
hotdog = Recipe.new
shrimp_salsa = Recipe.new
salad = Recipe.new
hamburger.name = "hamburger"
shawarma.name = "shawarma"
hotdog.name = "hotdog"
salad.name = "salad"
shrimp_salsa.name = "shrimp salsa"

#recipe card

rc1 = RecipeCard.new(pat, hotdog, "10/2", 10)
rc2 = RecipeCard.new(taimur, shawarma, "10/14", 10)
rc3 = RecipeCard.new(pat, shawarma, "10/11", 10)
rc5 = RecipeCard.new(pat, hotdog, "9/4", 7)
rc6 = RecipeCard.new(pat, shrimp_salsa, "5/24", 3)
rc8 = RecipeCard.new(pat, salad, "1/2", 4)
rc9 = RecipeCard.new(taimur, hotdog, "4/14", 8)


#ingredients
beef = Ingredient.new('beef')
pork = Ingredient.new('pork')
lamb = Ingredient.new('lamb')
letu = Ingredient.new("lettuce")
spinach = Ingredient.new("spinach")
bread = Ingredient.new("bread")
shrimp = Ingredient.new('shrimp')
tomato = Ingredient.new("tomato")


# hamburger.add_ingredients([beef, pork, lamb])
shawarma.add_ingredients([beef, pork, lamb, bread])
hamburger.add_ingredients([tomato, spinach, bread, beef])
hotdog.add_ingredients([bread, pork])
shrimp_salsa.add_ingredients([shrimp, tomato])
salad.add_ingredients([spinach, letu, tomato])

# allergen

pat.declare_allergen(pork)
pat.declare_allergen(beef)
binding.pry
