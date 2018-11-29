require 'pry'

class Recipe

  @@all = []

  def Recipe.all
    @@all
  end

  attr_accessor :name

  def initialize()
    Recipe.all << self
  end

  def self.most_popular
    #TODOLATER, connect to recipe-card
    # i want to count the number of
    hash = {}
    Recipe.all.each do |recipe|
      hash[recipe] = RecipeCard.all_recipe_names.count(recipe)
    end
    hash.max_by{|k,v| v}.first
  end

  def users
    #todolater, connect to recipe-card
    RecipeCard.all.select {|rec| rec.recipe == self}.collect{|rec|rec.user}
  end

  def ingredients
    a = RecipeIngredient.all.select{|rec_i| rec_i.recipe == self}.collect{|rec|rec.ingredient}
  end

  def allergens
    ingredients.select {|ingred| ingred.allergen?}
  end

  def add_ingredients(array)
    array.each do |item|
      RecipeIngredient.new(self, item)
    end
  end

end
