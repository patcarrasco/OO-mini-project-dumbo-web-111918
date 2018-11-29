class Allergen

  @@all = []

  def self.all
    @@all
  end

  def initialize(user, ingredient)
    Allergen.all << self
    @user = user
    @ingredient = ingredient
  end

  def self.all_allergen_names
    all.collect {|aller| aller.ingredient}
  end

  attr_accessor :user, :ingredient

end
