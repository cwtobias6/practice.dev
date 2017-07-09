class Rectangle 

	attr_accessor :width, :height

	def initialize(width = 2, height = 2)
		if(width < 0 || height < 0)
			raise "Please only enter positive values."

		end
		self.width = width
		self.height = height

	end

	def area()

		return self.width * self.height
		
	end

end


rec = Rectangle.new(10,4)

puts rec.width
puts rec.height

puts rec.area