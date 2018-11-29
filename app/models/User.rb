class User

  @@all = []

  def self.all
    @@all
  end

  def initialize
    User.all << self
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def recipes
    RecipeCard.all.select {|rc| rc.user == self}
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    Allergen.all.select {|aller| aller.user == self}
  end

  def allergen_names
    self.allergens.collect{|aller| aller.ingredient}
  end


  def top_three_recipes
    recipes.sort_by {|obj| obj.rating}.last(3)
  end

  def most_recent_recipe
    recipes.sort_by {|obj| obj.date}.last
  end

  def safe_recipes

    safe = []
    a = Recipe.all.each do |recipe|
      # binding.pry
      cond = (self.allergen_names & recipe.allergens).empty?
      safe << recipe if cond
    end
    safe
  end


end
