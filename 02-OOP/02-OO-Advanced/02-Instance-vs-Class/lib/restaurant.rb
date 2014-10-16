class Restaurant
  # TODO: add relevant accessors if necessary
  attr_reader :name, :city
  attr_accessor :ratings, :average_rating

  def initialize(city, name)
    # TODO: implement constructor with relevant instance variables
    @city = city
    @name = name
    @ratings = []
    @average_rating = 0
  end

  # Calculer la moyenne de toutes les notes attribuees a un restaurant
  def rate(rating)
    @ratings << rating
    sum = 0
    @ratings.each { |note| sum += note }
    @average_rating = sum / @ratings.count
  end

  # TODO: implement #filter_by_city and #rate methods
  def self.filter_by_city(restaurants, city)
    restos = []
    restaurants.each do |resto|
      restos << resto if resto.city == city
    end
    return restos
  end
end

p Restaurant.new("Lyon", "bocuse")