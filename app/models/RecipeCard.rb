class RecipeCard

  @@all = []

  def self.all
    @@all
  end

  def initialize(user, recipe, date, rating)
    @date = date
    @rating = rating
    @user = user
    @recipe = recipe
    RecipeCard.all << self
  end

  attr_accessor :date, :rating, :user, :recipe

  def self.all_recipe_names
    all.collect {|rec| rec.recipe}
  end

end
