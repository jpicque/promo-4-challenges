class OrangeTree
# TODO: Implement all the specs defined in the README.md :)
  attr_accessor :height, :age, :fruits

    def initialize
      @height = 0
      @age = 0
      @fruits = 0
    end

    def one_year_passes!
      @age += 1
  	  @height += 1 if @age <= 10
  	  if @age >= 0 && @age <=5
        @fruits = 0
      elsif @age > 5 && @age <= 10
  		  @fruits = 100
  	  elsif @age > 10 && @age <= 15
  		  @fruits = 200
  	  else
  		  @fruits = 0
  	  end	
    end

    def pick_a_fruit!
  	  @fruits -= 1
    end

    def dead?
  	  if @age >= 100
        true
      elsif @age > 50
        [true, false].sample
      else
        false
      end
    end

end

toto = OrangeTree.new

5.times do 
	toto.one_year_passes!
	p toto.age
	p toto.fruits
	
end