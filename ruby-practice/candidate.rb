class Candidate

	attr_accessor :name, :age, :occupation, :hobby,:birthplace

	def initialize(name, age:nil, occupation: nil, hobby:"Chicken wings", birthplace: "Nebraska")
		self.name = name
		self.age = age
		self.occupation = occupation
		self.hobby = hobby
		self.birthplace = birthplace
	end
end

candidate = Candidate.new("Tobias", age: 22)

p candidate

