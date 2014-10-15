class Restaurant
  attr_writer :food, :drink
  attr_reader :menu, :top_speed

  def initialize(food, drink, menu)
    @food = food
    @drink = drink
    @menu = menu
  end
end



