class SportCar
  attr_writer :brand, :model
  attr_reader :power, :top_speed

  def initialize(brand, model, power, top_speed)
    @brand = brand
    @model = model
    @power = power
    @top_speed = top_speed
  end
end

nissan_gtr = Sportcar.new("Nissan", "GTR", 550, 320)


