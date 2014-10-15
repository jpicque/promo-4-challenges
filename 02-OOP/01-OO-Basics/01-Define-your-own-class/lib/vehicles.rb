class SportsCars
  
attr_accessor = :brand, :model, :power, :top_speed 

  def initialize(brand, model, power, top_speed)
	@brand = brand
	@model = model
	@power = power
	@top_speed = top_speed
  end
end

nissan_gtr = SportsCars.new("Nissan", "GTR", "550", "320")
bugatti_veyron = SportsCars.new("Bugatti", "Veyron", "1001", "410")
ferrari_458 = SportsCars.new("Ferrari", "458 Italia", "570", "330")

