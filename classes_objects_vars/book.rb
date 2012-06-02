#!/usr/bin/ruby

class Book
	# R access to the ISBN code
	attr_reader		:isbn
	# R/W access to the price
	attr_accessor	:price 
	
	def initialize(isbn, price)
		@isbn = isbn
		@price = price
	end
	
	#Defining the virtual attribute with the following two methods
	def price_in_cents
		Integer(price * 100 + 0.50)
	end
	
	def price_in_cents=(cents)
		@price = cents / 100.0
	end
	
	def to_s
		"BOOK => {:isbn => #{isbn}, :price => #{price}"
	end
	
end
