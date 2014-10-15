class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  # Variables d'instance : taille, age, probabilité de mourir, age max, nombre de fruits
attr_accessor :height, :age, :fruits

  def initialize
    @height = 0
    @age = 0
    @fruits = 0
  end

  def one_year_passes!
  	@age += 1
  	@height += 1 if @age <= 10
 
  end

  def pick_a_fruit!
  	if @age < 5
  		puts @fruits = 0
  	elsif @age < 10
  		puts @fruits = 100
  	elsif @age < 15
  		puts @fruits = 200
  	else
  		puts @fruits = 0
  	end
  end

  def dead?
  	return false if @age <= 50
  	return true if @age >= 100
  end

end


#You should be able to measure the tree
#Each year, the tree should age (it becomes older and taller, and eventually dies).
#A tree grows 1 meter per year until 10 years old. Then it stops.
#Before 50 years old, the proabability of dying as a year pass is zero.
#After 50 years old, the probability of dying increases
#No tree can live more than 100 years
#A tree will produce 100 fruits a year once it is 5 years old
#A tree will produce 200 fruits a year between 10 and 15 years old
#A tree will not produce any fruits after that
#You should be able to pick an fruit from the tree
#You should be able to count how many fruits on the tree there are left
#Every year, fruits which were not picked just fall off
