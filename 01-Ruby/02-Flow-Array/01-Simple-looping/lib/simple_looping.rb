def sum_with_while(min, max)
  # CONSTRAINT: you should use a while..end structure
 x = 0
    while ( min < max )
      x += min
      min +=1
    end
  x += min
end

puts sum_with_while(1, 100)

def sum_with_for(min, max)
  # CONSTRAINT: you should use a for..end structure
sum = 0
for x in (min..max)
	sum += x
end
sum
end

puts sum_with_for(1, 100)

def sum_recursive(min, max)
  # CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself
end

