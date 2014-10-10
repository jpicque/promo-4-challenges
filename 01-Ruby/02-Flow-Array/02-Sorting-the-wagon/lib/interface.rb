require_relative "wagon_sort"

# TODO: Ask the user about students to add to the Wagon.
#       Remember, to read an input from the command line, use:
#       - `gets`:  http://www.ruby-doc.org/core-2.1.2/Kernel.html#method-i-gets
#       - `chomp`: http://www.ruby-doc.org/core-2.1.2/String.html#method-i-chomp
students = []

puts "Type a student name"
name = gets.chomp
students << name

while name != ""
	puts "Type another student name"
	name = gets.chomp
	if name != ""
		students << name
	else
		puts "Type another student name"
	end
end

students = students - [""]
students = wagon_sort(students)

puts "Congratulations! Your Wagon has #{students.count} students : #{students}"

students_last = students.last
students = students - ["#{students_last}"]
puts "- #{students.join(", ")} and #{students_last}"
# TODO: Then call `wagon_sort` method defined in the wagon_sort.rb
#       file and display the sorted student list


