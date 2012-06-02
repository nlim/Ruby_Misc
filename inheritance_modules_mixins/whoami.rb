module Debug 
	def who_am_i?
		"#{self.class.name} (id: #{self.object_id}): #{self.name}"
	end
end

class Phonograph
	include Debug 
	attr_reader :name 
	def initialize(name)
		@name = name
	end
end

class EightTrack
	include Debug 
	attr_reader :name 
	def initialize(name)
		@name = name
	end
end

class Person
	include Comparable
	attr_reader :name
	def initialize(name)
		@name = name
	end
	
	def to_s
		"#{@name}"
	end
	
	def <=>(other)
		self.name <=> other.name
	end
end

puts "Tesing a custom Debug module"
ph = Phonograph.new("West End Blues")
et = EightTrack.new("Surrealistic Pillow")
puts ph.who_am_i?
puts et.who_am_i?
puts "Testing out the built-in Comparable module"
people = []
people << Person.new("Bob")
people << Person.new("Joe")
people << Person.new("Matz") 
people << Person.new("Guido") 
people << Person.new("Larry")
sorted_people = people.sort

enum = people.to_enum
sorted_enum = sorted_people.to_enum
puts "Initial \t \t Sorted"
puts "-----------------"
loop do
puts "#{enum.next}  \t \t #{sorted_enum.next}"
end

