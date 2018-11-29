class Ingredient

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    Ingredient.all << self
  end

  def allergen?
    !!Allergen.all.collect{|allergens| allergens.ingredient}.include?(self)
  end

  def self.most_common_allergen
    hash = {}
    Allergen.all.collect do |aller| aller.ingredient
      hash[aller] = Allergen.all_allergen_names.count(aller)
    end
    hash.max_by{|k,v| v}.first
  end


  attr_accessor :name

end
