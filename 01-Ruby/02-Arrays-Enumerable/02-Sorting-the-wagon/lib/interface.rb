require_relative "wagon_sort"

# TODO: Ask the user about students to add to the Wagon.
#       Remember, to read an input from the command line, use:
#       - `gets`:  http://www.ruby-doc.org/core-2.1.2/Kernel.html#method-i-gets
#       - `chomp`: http://www.ruby-doc.org/core-2.1.2/String.html#method-i-chomp
liste = []

puts "Type a student name"
name = gets.chomp
liste << name

while name != ""
	puts "Type another student name"
	name = gets.chomp
	if name != ""
		liste << name
	else
		puts "Type another student name"
	end
end

nombre = liste.count

puts "Congratulations! Your Wagon has #{nombre} students : #{liste.to_s}"

# TODO: Then call `wagon_sort` method defined in the wagon_sort.rb
#       file and display the sorted student list
puts wagon_sort(liste)

