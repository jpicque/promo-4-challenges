BURGER = {
"Cheese Burger" => 290,
"Big Mac" => 300,
"Mc Bacon" => 400,
"Royal Cheese" => 130
}

SIDE = {
"French fries" => 130,
"Potatoes" => 130
}

BEVERAGE = {
"Coca" => 160,
"Sprite" => 170
}

 MENU = {
  "Happy Meal" => ["Cheese Burger", "French fries", "Coca"],
  "Best Of Big Mac" => ["Big Mac", "French fries", "Coca"],
  "Best Of Royal Cheese" => ["Royal Cheese", "Potatoes", "Sprite"]


def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order
	return BURGER[burger] + SIDE[side] + BEVERAGE[beverage]
end

def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order

end

