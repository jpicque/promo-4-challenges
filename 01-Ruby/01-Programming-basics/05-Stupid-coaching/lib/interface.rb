require_relative "coach_answer"
# TODO: Implement the program that makes you discuss with your coach from the terminal.

puts "Comment ça va?"
my_message = gets.chomp

while my_message != "" 
		puts coach_answer(my_message)
		my_message = gets.chomp
end
