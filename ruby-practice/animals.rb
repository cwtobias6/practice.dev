class Animal 

	attr_accessor :name, :age

	def eat(food)
		puts "I love to eat #{food}."
	end

end


class Dog < Animal 

	def eat(food,flavor)
		super(food)
		puts "It is #{flavor}, yumm."
	end

	def to_s
		"My name is #{name} and I am #{age} years old."
	end

end


gus = Dog.new
gus.name = "Gus"
gus.age = 2
gus.eat("chicken wings", "bbq")
puts gus
