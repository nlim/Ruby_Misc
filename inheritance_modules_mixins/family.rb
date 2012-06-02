class Person
	def initialize(name)
		@name = name
	end
	def to_s
		"#{self.class} named #{@name}"
	end 
end

class Parent < Person
	def hello
		puts "Hello from #{self}"
	end
	
	def print_relatives
		puts "The Superclass of #{self.class} is #{self.class.superclass}."
	end
	
end

class Child < Parent

end


p = Parent.new("Jim")
c = Child.new("Nate")
puts p
puts c
p.print_relatives
c.print_relatives