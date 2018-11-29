class RecipeIngredient

  @@all = []

  def self.all
    @@all
  end

  def initialize(recipe, ingredient)
    @ingredient = ingredient
    @recipe = recipe
    RecipeIngredient.all << self
  end

  attr_accessor :ingredient, :recipe

end
