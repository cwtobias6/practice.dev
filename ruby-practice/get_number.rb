# A random get number game

puts "Welcome to 'Get My Number'"
print "What is your name? "

input = gets

name = input.chomp 


puts "Welcome, #{name}!"
puts "Now, Guess my random number between 1 and 100."
puts "Go!!"

target = rand(100) + 1

num_guesses = 0

guessed_it = false

until guessed_it || num_guesses == 10

	remaining_guesses = num_guesses - 10

	puts "You have #{10 - num_guesses} guesses left!"

	print "Make a Guess: "

	guess = gets.to_i

	num_guesses += 1

	if (guess > target)

		puts 'Too high'

	elsif (guess < target)
		puts 'Too LOW'

	elsif (guess == target)
		puts "Yay you guessed the correct number"
		puts "It took you #{num_guesses} guesses to get it right."
		guessed_it = true

	end

end

unless guessed_it
	puts "Sorry you\'re out of guesses. The number was #{target}. Please try again."
end









		