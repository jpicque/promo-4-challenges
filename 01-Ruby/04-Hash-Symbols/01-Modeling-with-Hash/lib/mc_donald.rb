ITEM = {
"Cheese Burger" => 290,
"Big Mac" => 300,
"Mc Bacon" => 400,
"Royal Cheese" => 130,
"French fries" => 130,
"Potatoes" => 130,
"Coca" => 160,
"Sprite" => 170
}

 MENU = {
  "Happy Meal" => ["Cheese Burger", "French fries", "Coca"],
  "Best Of Big Mac" => ["Big Mac", "French fries", "Coca"],
  "Best Of Royal Cheese" => ["Royal Cheese", "Potatoes", "Sprite"]
}


def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order
	return ITEM[burger] + ITEM[side] + ITEM[beverage]
end

def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order
sum = 0
  orders.each do |x|
  	if x == "Happy Meal"
  		sum =+ poor_calories_counter("Cheese Burger", "French fries", "Coca")
  	elsif x == "Best Of Big Mac"
  		sum =+ poor_calories_counter("Big Mac", "French fries", "Coca")
  	elsif x == "Best Of Royal Cheese"
  		sum =+ poor_calories_counter("Royal Cheese", "Potatoes", "Sprite")
  	else
  		sum =+ poor_calories_counter + extra_poor_calories_counter(x)
  	end
  end
	return sum
end